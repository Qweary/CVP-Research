#!/usr/bin/env python3
"""Try local_ollama_mcp.py from a terminal: call one tool and print the result.

    OLLAMA_TUNNEL_PORT=<local-port> python3 mcp_call.py health
    OLLAMA_TUNNEL_PORT=<local-port> python3 mcp_call.py generate MODEL "PROMPT"

A small terminal client for following along with this folder. Use it to try
the server, and to run the README's "Check that there is no fallback", before
you register the server with an agent client. It needs no agent client, so
nothing you type here or get back is sent to a cloud model. It starts the
server over stdio exactly as an MCP client would, makes one tools/call, and
prints the result text. On a tool error it prints the server's error text
and exits 1. It prints the reply and never runs it.

Set MCP_SERVER to the path of local_ollama_mcp.py if it is not in the
current directory. Only PATH/HOME-style defaults and the OLLAMA_* variables
are passed to the server.

The reply text is model output: untrusted data. Every character that could
drive the terminal or change what the eye reads (C0 and C1 controls, DEL,
bidi overrides, zero-width and other format characters) is printed as a
visible escape such as \\x1b or \\u202e instead, and nothing here acts on
the reply.
"""

import anyio
import os
import sys
import tempfile
import unicodedata

from mcp import ClientSession, StdioServerParameters
from mcp.client.stdio import get_default_environment, stdio_client


def _visible(ch: str) -> str:
    if ch in "\n\t":
        return ch
    cat = unicodedata.category(ch)
    # Cc: C0, DEL and C1 (U+0080-U+009F: 8-bit CSI and OSC). Cf: bidi
    # overrides and isolates, zero-width characters, soft hyphen.
    # Cs/Co/Cn: surrogates, private use, unassigned. Zl/Zp: line and
    # paragraph separators.
    if cat in ("Cc", "Cf", "Cs", "Co", "Cn", "Zl", "Zp"):
        o = ord(ch)
        return f"\\x{o:02x}" if o < 0x100 else f"\\u{o:04x}" if o < 0x10000 else f"\\U{o:08x}"
    return ch


def safe(text: str) -> str:
    return "".join(_visible(ch) for ch in text)


async def call(tool: str, args: dict) -> int:
    server = os.environ.get("MCP_SERVER", "local_ollama_mcp.py")
    if not os.path.isfile(server):
        print(f"server not found: {server} (set MCP_SERVER)", file=sys.stderr)
        return 2
    env = get_default_environment()
    env.update({k: v for k, v in os.environ.items() if k.startswith("OLLAMA_")})
    params = StdioServerParameters(command=sys.executable, args=[server], env=env)
    # The server's own stderr (library warnings, request logs) is not shown
    # with the result. It is shown only if the server fails to start or answer.
    with tempfile.TemporaryFile(mode="w+") as errlog:
        try:
            async with stdio_client(params, errlog=errlog) as (read, write):
                async with ClientSession(read, write) as session:
                    await session.initialize()
                    result = await session.call_tool(tool, args)
        except Exception:
            errlog.seek(0)
            lines = [ln for ln in errlog.read().splitlines()
                     if ln.strip() and "Warning" not in ln and "warnings.warn" not in ln]
            print("server did not answer; its last stderr lines:")
            for ln in lines[-5:]:
                print("  " + safe(ln))
            return 2
    text = "\n".join(c.text for c in result.content if getattr(c, "type", "") == "text")
    if result.isError:
        print(safe(text))   # FastMCP already prefixes "Error executing tool ..."
        return 1
    print(safe(text))
    return 0


def main() -> int:
    if len(sys.argv) == 2 and sys.argv[1] == "health":
        return anyio.run(call, "health", {})
    if len(sys.argv) == 4 and sys.argv[1] == "generate":
        return anyio.run(call, "generate", {"model": sys.argv[2], "prompt": sys.argv[3]})
    print(__doc__.split("\n\n")[1], file=sys.stderr)
    return 2


if __name__ == "__main__":
    sys.exit(main())
