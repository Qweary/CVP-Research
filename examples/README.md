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

### The author's setup

The instructions below use placeholders. For comparison, in the author's own
setup the model host is `192.168.10.50` and the workstation is
`192.168.1.50`, on two internal subnets. Use your own addresses: these are
given only so the placeholders have a concrete example beside them.

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
| `mcp_call.py` | a small terminal client: starts the server, calls one tool, prints the result. For trying the server and for the no-fallback check without an agent client |

## Prerequisites

Model host:

- Linux with OpenSSH server
- [Ollama](https://ollama.com) and at least one model pulled (`ollama pull <model>`)

Workstation:

- OpenSSH client and bash
- Python 3.10 or newer
- `pip install "mcp>=1.2" httpx`
- an MCP-capable agent client, or `mcp_call.py` in this folder to try the
  server from a terminal first (same requirements line: `mcp>=1.2` brings
  `anyio`)

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

If you run Ollama in a container instead, do not publish the port with
`-p 11434:11434`: that listens on every interface and Docker's own firewall
rules can bypass a host firewall. Use `-p 127.0.0.1:11434:11434`, and run the
same `ss` check.

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

`tunnel.sh` runs ssh with `BatchMode=yes`, so ssh cannot ask for a
passphrase. Either make this key without one, or load it into `ssh-agent`
(`ssh-add ~/.ssh/<tunnel-key>`) before `tunnel.sh open`. Otherwise the tunnel
fails with `Permission denied (publickey)`.

Put the public key in `/home/<tunnel-user>/.ssh/authorized_keys` on the model
host, with restrictions on the same line. `restrict` turns off every kind of
forwarding, the TTY, and user rc files; `port-forwarding` turns local
forwarding back on, and `permitopen` limits it to one destination:

```
restrict,port-forwarding,permitopen="127.0.0.1:11434",command="/bin/false",from="x.x.x.x" ssh-ed25519 AAAA...<public-key>... ollama tunnel
```

`from="x.x.x.x"` must be the source address the model host actually sees
for the workstation's connection. That can differ from the workstation's own
address, for example when traffic between the two machines is routed or
translated between subnets. Find it on the host before you add the
restriction: open a session from the workstation by a route you already have
(or add this key once without `from=`), then read the address on the host,
either from the sshd log's `Accepted publickey for ... from <address>` line
(`sudo journalctl -u ssh | grep Accepted`; the unit is `sshd` on some
systems) or with `sudo ss -tn state established '( sport = :22 )'` while the
session is open. Use that value. A wrong `from=` value fails with
`Permission denied (publickey)`, the same message as the passphrase problem
above, so check both. Then fix ownership:

```
sudo chown <tunnel-user>:<tunnel-user> /home/<tunnel-user>/.ssh/authorized_keys
sudo chmod 600 /home/<tunnel-user>/.ssh/authorized_keys
```

### 3. Restrict the account in sshd

Add to the end of `/etc/ssh/sshd_config` (or a file in
`/etc/ssh/sshd_config.d/`). The key file and this block overlap on purpose,
but they are not two complete copies of each other: the key line cannot
forbid remote (`-R`) forwarding, because `port-forwarding` turns both
directions back on. Only this block (`AllowTcpForwarding local`,
`PermitListen none`) stops that, so do not skip it.

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

Check the syntax, then check the settings that will actually apply to the
tunnel account, then reload:

```
sudo sshd -t
sudo sshd -T -C user=<tunnel-user>,host=<workstation>,addr=<workstation-ip> \
    | grep -iE '^(allowtcpforwarding|permitopen|permitlisten|forcecommand|permittty) '
sudo systemctl reload ssh
```

Expect `allowtcpforwarding local`, `permitopen 127.0.0.1:11434`,
`permitlisten none`, `forcecommand /bin/false`, `permittty no`. `sshd -t` only
checks syntax. The `-T` check matters because sshd uses the first value it
finds for each setting: an earlier `Match` block that also matches this user
(for example a `Match all` in another file) silently wins over yours.

Notes:

- `PermitOpen` compares the destination as text. The tunnel must ask for
  `127.0.0.1:11434`, not `localhost:11434`, or the forward is refused.
  `tunnel.sh` already uses `127.0.0.1`.
- `ForceCommand /bin/false` means any attempt to get a shell or run a command
  ends at once. The tunnel uses `ssh -N`, which asks for no command, so
  forwarding still works.
- If `sshd_config` already has an `AllowUsers` or `AllowGroups` line, sshd
  refuses every account that line does not name, and that check comes before
  the key. Add `<tunnel-user>` to it (or the account to a group it names),
  then run `sshd -t` and the `-T` check again.
- Keep a host firewall on the model host that allows inbound SSH only from
  the source address you found in step 2 of the host setup.

## Setup on the workstation

### 1. Pin the host key

Get the model host's key fingerprint from the host's console (not over the
network you are trying to trust), then:

```
hostkey=$(mktemp)
ssh-keyscan -t ed25519 <host-b> > "$hostkey"
ssh-keygen -lf "$hostkey"         # compare with the fingerprint from the console
cat "$hostkey" >> ~/.ssh/known_hosts
rm -f "$hostkey"
```

`tunnel.sh` uses `StrictHostKeyChecking=yes`, so it refuses to connect to a
host whose key is not already pinned.

### 2. Open and close the tunnel

```
export TUNNEL_HOST=<host-b>
export TUNNEL_USER=<tunnel-user>
export LOCAL_PORT=<local-port>
export TUNNEL_KEY=~/.ssh/<tunnel-key>

./tunnel.sh open      # starts ssh -N, waits until it is listening, records its PID
./tunnel.sh status
./tunnel.sh close     # kills that PID, removes the PID file
```

The PID file lives in `$XDG_RUNTIME_DIR/ollama-tunnel/` (or
`~/.cache/ollama-tunnel/`). `close` only kills the PID if it is still an
`ssh` process carrying this exact forward, so a recycled PID is left alone.
`LOCAL_PORT` must be 1024 to 65535 and not 11434.

What `open` runs, in full:

```
ssh -F /dev/null -N -L 127.0.0.1:<local-port>:127.0.0.1:11434 \
    -i ~/.ssh/<tunnel-key> -o IdentitiesOnly=yes -o BatchMode=yes \
    -o ExitOnForwardFailure=yes -o StrictHostKeyChecking=yes \
    -o ServerAliveInterval=30 -o ServerAliveCountMax=3 \
    -o ForwardAgent=no -o ForwardX11=no \
    -l <tunnel-user> -- <host-b> &
```

`-F /dev/null` ignores `~/.ssh/config`, so nothing there can add forwards, a
proxy, or connection sharing. It also means `<host-b>` must be a real host
name or address, not an alias from that file. The listening side is written
as `127.0.0.1:<local-port>` so the forward is never reachable from the
network, whatever `GatewayPorts` says.

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
| `OLLAMA_TUNNEL_PORT` | yes | the workstation-side port of the tunnel; 11434 is refused |
| `OLLAMA_TUNNEL_HOST` | no | a loopback IP, default `127.0.0.1`; anything else is refused |
| `OLLAMA_TIMEOUT` | no | read timeout in seconds for `generate`, 1 to 3600, default 600 |

## Using it

- `health` calls `/api/tags` and returns "reachable" plus the model names,
  or an error.
- `generate(model, prompt)` sends one user message to `/api/chat` with
  `stream: false` and returns the reply text only.

## Check that there is no fallback

Do this once before you rely on it. Any MCP client can make the calls. One
way, with no agent client involved, is `mcp_call.py` in this folder:

```
OLLAMA_TUNNEL_PORT=<local-port> python3 mcp_call.py health
OLLAMA_TUNNEL_PORT=<local-port> python3 mcp_call.py generate <model> "Say hello."
```

It prints the reply and never runs it. Control characters in the reply are
printed as visible escapes such as `\x1b`, so a reply cannot drive your
terminal.

1. Tunnel open, `health` returns the host's models.
2. Stop Ollama on the model host (`sudo systemctl stop ollama`). `health` and
   `generate` must return an error.
3. Start Ollama again, then `./tunnel.sh close`. Both tools must return an
   error, even if an Ollama instance is running on the workstation itself on
   port 11434. The server only talks to `<local-port>`, and both the server
   and `tunnel.sh` refuse 11434 as `<local-port>`, so the two can never be
   confused.

## Limits

- "Local" means where the text is generated. If the agent client driving this
  is a cloud model, it sees every prompt and every reply.
- The server does no authentication of its own. It relies on the tunnel and
  on the fact that it listens on stdio only. Any process on the workstation
  that can reach `127.0.0.1:<local-port>` can also use the tunnel while it is
  open, including processes of other users on the workstation. Close it when
  you are done.
- The tunnel carries the whole Ollama API, not just the two calls this server
  makes. Anything that reaches `<local-port>` can also list, pull, copy,
  create, and delete models on the model host. Your browser is a local
  process too: Ollama's own origin and host checks are what keep a web page
  away from this port, so do not widen them with `OLLAMA_ORIGINS=*` on the
  model host.
