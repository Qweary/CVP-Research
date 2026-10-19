#!/usr/bin/env bash
# Open, close, or check the SSH local port forward to Ollama on the model host.
#
#   TUNNEL_HOST=<host-b> TUNNEL_USER=<tunnel-user> LOCAL_PORT=<local-port> \
#   TUNNEL_KEY=~/.ssh/<tunnel-key> ./tunnel.sh open|close|status
#
# The forward binds 127.0.0.1:<local-port> on this machine and connects to
# 127.0.0.1:11434 on the model host. The destination is written as 127.0.0.1
# (not "localhost") because the server's PermitOpen rule matches it literally.
set -eu

: "${TUNNEL_HOST:?set TUNNEL_HOST to the model host}"
: "${TUNNEL_USER:?set TUNNEL_USER to the restricted tunnel account}"
: "${LOCAL_PORT:?set LOCAL_PORT to the workstation-side port}"
: "${TUNNEL_KEY:?set TUNNEL_KEY to the tunnel account private key}"
REMOTE_PORT=11434
OPEN_TIMEOUT=15
FORWARD="127.0.0.1:$LOCAL_PORT:127.0.0.1:$REMOTE_PORT"

case "$LOCAL_PORT" in
    *[!0-9]* | "") echo "LOCAL_PORT must be a number" >&2; exit 2 ;;
esac
if [ "$LOCAL_PORT" -lt 1024 ] || [ "$LOCAL_PORT" -gt 65535 ] || [ "$LOCAL_PORT" -eq "$REMOTE_PORT" ]; then
    echo "LOCAL_PORT must be 1024-65535 and not $REMOTE_PORT" >&2
    exit 2
fi
STATE_DIR="${XDG_RUNTIME_DIR:-$HOME/.cache}/ollama-tunnel"
PID_FILE="$STATE_DIR/tunnel-$LOCAL_PORT.pid"

is_our_ssh() {
    # True only if the PID is alive and is an ssh process carrying this exact
    # forward. Checking the arguments, not just the name, means a recycled PID
    # that now belongs to some other ssh is never killed. Works on Linux and macOS.
    [ -n "${1:-}" ] && kill -0 "$1" 2>/dev/null || return 1
    case " $(ps -ww -p "$1" -o args= 2>/dev/null) " in
        *ssh*" -L $FORWARD "*) return 0 ;;
        *) return 1 ;;
    esac
}

port_in_use() {
    (exec 3<>"/dev/tcp/127.0.0.1/$LOCAL_PORT") 2>/dev/null
}

cmd_open() {
    mkdir -p "$STATE_DIR"
    chmod 700 "$STATE_DIR"
    if [ -f "$PID_FILE" ] && is_our_ssh "$(cat "$PID_FILE")"; then
        echo "tunnel already open (pid $(cat "$PID_FILE"))"
        return 0
    fi
    if port_in_use; then
        echo "127.0.0.1:$LOCAL_PORT is already in use by something else" >&2
        exit 1
    fi
    # -F /dev/null ignores ~/.ssh/config, so no config entry can add forwards,
    # a proxy, or connection sharing. The host key must already be pinned in
    # ~/.ssh/known_hosts (StrictHostKeyChecking=yes). "-l user -- host" keeps
    # either value from being read as an ssh option.
    ssh -F /dev/null -N \
        -L "$FORWARD" \
        -i "$TUNNEL_KEY" \
        -o IdentitiesOnly=yes \
        -o BatchMode=yes \
        -o ExitOnForwardFailure=yes \
        -o StrictHostKeyChecking=yes \
        -o ServerAliveInterval=30 \
        -o ServerAliveCountMax=3 \
        -o ForwardAgent=no \
        -o ForwardX11=no \
        -l "$TUNNEL_USER" \
        -- "$TUNNEL_HOST" &
    pid=$!
    # Wait until ssh has authenticated and is listening, or has given up.
    waited=0
    while :; do
        if ! kill -0 "$pid" 2>/dev/null; then
            echo "tunnel failed to start (see ssh output above)" >&2
            exit 1
        fi
        if port_in_use; then
            break
        fi
        if [ "$waited" -ge "$OPEN_TIMEOUT" ]; then
            kill "$pid" 2>/dev/null || true
            echo "tunnel did not come up within ${OPEN_TIMEOUT}s; stopped it" >&2
            exit 1
        fi
        sleep 1
        waited=$((waited + 1))
    done
    echo "$pid" > "$PID_FILE"
    echo "tunnel open: 127.0.0.1:$LOCAL_PORT -> $TUNNEL_HOST:127.0.0.1:$REMOTE_PORT (pid $pid)"
}

cmd_close() {
    if [ ! -f "$PID_FILE" ]; then
        echo "no PID file; tunnel not open from this script"
        return 0
    fi
    pid=$(cat "$PID_FILE")
    if is_our_ssh "$pid"; then
        kill "$pid"
        echo "tunnel closed (pid $pid)"
    else
        echo "pid $pid is not this tunnel's ssh process; removing stale PID file"
    fi
    rm -f "$PID_FILE"
}

cmd_status() {
    if [ -f "$PID_FILE" ] && is_our_ssh "$(cat "$PID_FILE")"; then
        echo "open (pid $(cat "$PID_FILE"), 127.0.0.1:$LOCAL_PORT)"
    else
        echo "closed"
        return 1
    fi
}

case "${1:-}" in
    open) cmd_open ;;
    close) cmd_close ;;
    status) cmd_status ;;
    *) echo "usage: $0 open|close|status" >&2; exit 2 ;;
esac
