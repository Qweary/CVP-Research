# Example: routing agent work to a local model over an SSH tunnel

This folder is a small, working example of the pattern described in
[`07-LOCAL-ROUTING-POC.md`](../07-LOCAL-ROUTING-POC.md). It is new code written
for this repository. It is not the code used in that run, but it follows the
same shape:

```
workstation                                         model host (<host-b>)
-----------                                         ---------------------
agent client
  -> local_ollama_mcp.py (MCP server, stdio)
       -> http://127.0.0.1:<local-port>
            -> ssh -L tunnel  ===================>  127.0.0.1:11434 (Ollama)
```

- Ollama listens on the model host's loopback interface only. Nothing on the
  network can reach it directly. The only way in is the tunnel.
- The tunnel account can forward that one port and do nothing else.
- The MCP server only talks to a loopback address and has **no fallback**. If
  the tunnel or the host is down, a call returns an error. It never answers
  from another model or another machine.

## Version 1: a human reviews and runs everything

There is no automation here. The local model's reply comes back as text. A
human reads it and decides what, if anything, to run, and runs it by hand.
Treat every reply as untrusted data: do not pipe it into a shell, an
interpreter, or another tool that acts on it.

## Files

| file | what it is |
|---|---|
| `local_ollama_mcp.py` | MCP server with two tools: `health` and `generate(model, prompt)` |
| `tunnel.sh` | opens, closes, and checks the SSH forward, tracked by PID |

## Prerequisites

Model host:

- Linux with OpenSSH server
- [Ollama](https://ollama.com) and at least one model pulled (`ollama pull <model>`)

Workstation:

- OpenSSH client and bash
- Python 3.10 or newer
- `pip install "mcp>=1.2" httpx`
- an MCP-capable agent client

## Setup on the model host

### 1. Bind Ollama to loopback only

Ollama's default is `127.0.0.1:11434`. Make it explicit so a later change
cannot widen it. With the systemd service:

```
sudo systemctl edit ollama
```

Add:

```
[Service]
Environment="OLLAMA_HOST=127.0.0.1:11434"
```

Then restart and check that it listens on loopback and nowhere else:

```
sudo systemctl restart ollama
ss -ltnp | grep 11434        # expect 127.0.0.1:11434 only
```

### 2. Create the restricted tunnel account

```
sudo useradd --create-home --shell /usr/sbin/nologin <tunnel-user>
sudo passwd -l <tunnel-user>
sudo install -d -m 700 -o <tunnel-user> -g <tunnel-user> /home/<tunnel-user>/.ssh
```

On the workstation, make a key used for nothing else:

```
ssh-keygen -t ed25519 -f ~/.ssh/<tunnel-key> -C "ollama tunnel"
```

Put the public key in `/home/<tunnel-user>/.ssh/authorized_keys` on the model
host, with restrictions on the same line. `restrict` turns off every kind of
forwarding, the TTY, and user rc files; `port-forwarding` turns local
forwarding back on, and `permitopen` limits it to one destination:

```
restrict,port-forwarding,permitopen="127.0.0.1:11434",command="/bin/false",from="x.x.x.x" ssh-ed25519 AAAA...<public-key>... ollama tunnel
```

`from="x.x.x.x"` is the workstation's address. Then fix ownership:

```
sudo chown <tunnel-user>:<tunnel-user> /home/<tunnel-user>/.ssh/authorized_keys
sudo chmod 600 /home/<tunnel-user>/.ssh/authorized_keys
```

### 3. Restrict the account in sshd

Add to the end of `/etc/ssh/sshd_config` (or a file in
`/etc/ssh/sshd_config.d/`). The key file and this block both restrict the
account, so a mistake in one is caught by the other.

```
Match User <tunnel-user>
    AuthenticationMethods publickey
    PasswordAuthentication no
    KbdInteractiveAuthentication no
    AllowTcpForwarding local
    PermitOpen 127.0.0.1:11434
    PermitListen none
    GatewayPorts no
    AllowStreamLocalForwarding no
    AllowAgentForwarding no
    X11Forwarding no
    PermitTunnel no
    PermitTTY no
    PermitUserRC no
    ForceCommand /bin/false
```

Check the syntax, then reload:

```
sudo sshd -t && sudo systemctl reload ssh
```

Notes:

- `PermitOpen` compares the destination as text. The tunnel must ask for
  `127.0.0.1:11434`, not `localhost:11434`, or the forward is refused.
  `tunnel.sh` already uses `127.0.0.1`.
- `ForceCommand /bin/false` means any attempt to get a shell or run a command
  ends at once. The tunnel uses `ssh -N`, which asks for no command, so
  forwarding still works.
- Keep a host firewall on the model host that allows inbound SSH from the
  workstation only.

## Setup on the workstation

### 1. Pin the host key

Get the model host's key fingerprint from the host's console (not over the
network you are trying to trust), then:

```
ssh-keyscan -t ed25519 <host-b> > /tmp/hostkey
ssh-keygen -lf /tmp/hostkey       # compare with the fingerprint from the console
cat /tmp/hostkey >> ~/.ssh/known_hosts
```

`tunnel.sh` uses `StrictHostKeyChecking=yes`, so it refuses to connect to a
host whose key is not already pinned.

### 2. Open and close the tunnel

```
export TUNNEL_HOST=<host-b>
export TUNNEL_USER=<tunnel-user>
export LOCAL_PORT=<local-port>
export TUNNEL_KEY=~/.ssh/<tunnel-key>

./tunnel.sh open      # starts ssh -N in the background, records its PID
./tunnel.sh status
./tunnel.sh close     # kills that PID, removes the PID file
```

The PID file lives in `$XDG_RUNTIME_DIR/ollama-tunnel/` (or
`~/.cache/ollama-tunnel/`). `close` only kills the PID if it is still an
`ssh` process.

What `open` runs, in full:

```
ssh -N -L 127.0.0.1:<local-port>:127.0.0.1:11434 \
    -i ~/.ssh/<tunnel-key> -o IdentitiesOnly=yes -o BatchMode=yes \
    -o ExitOnForwardFailure=yes -o StrictHostKeyChecking=yes \
    -o ServerAliveInterval=30 -o ServerAliveCountMax=3 \
    -o ForwardAgent=no -o ForwardX11=no \
    <tunnel-user>@<host-b> &
```

A quick check with the tunnel open:

```
curl -s http://127.0.0.1:<local-port>/api/tags
```

### 3. Register the MCP server with your client

Each MCP client has its own config file, but most accept this shape:

```json
{
  "mcpServers": {
    "local-ollama": {
      "command": "python3",
      "args": ["/path/to/examples/local_ollama_mcp.py"],
      "env": {
        "OLLAMA_TUNNEL_PORT": "<local-port>"
      }
    }
  }
}
```

Environment variables the server reads:

| variable | required | meaning |
|---|---|---|
| `OLLAMA_TUNNEL_PORT` | yes | the workstation-side port of the tunnel |
| `OLLAMA_TUNNEL_HOST` | no | a loopback IP, default `127.0.0.1`; anything else is refused |
| `OLLAMA_TIMEOUT` | no | read timeout in seconds for `generate`, default 600 |

## Using it

- `health` calls `/api/tags` and returns "reachable" plus the model names,
  or an error.
- `generate(model, prompt)` sends one user message to `/api/chat` with
  `stream: false` and returns the reply text only.

## Check that there is no fallback

Do this once before you rely on it:

1. Tunnel open, `health` returns the host's models.
2. Stop Ollama on the model host (`sudo systemctl stop ollama`). `health` and
   `generate` must return an error.
3. Start Ollama again, then `./tunnel.sh close`. Both tools must return an
   error, even if an Ollama instance is running on the workstation itself on
   port 11434. The server only talks to `<local-port>`; pick a
   `<local-port>` that is not 11434 so the two can never be confused.

## Limits

- "Local" means where the text is generated. If the agent client driving this
  is a cloud model, it sees every prompt and every reply.
- The server does no authentication of its own. It relies on the tunnel and
  on the fact that it listens on stdio only. Any process on the workstation
  that can reach `127.0.0.1:<local-port>` can also use the tunnel while it is
  open.
