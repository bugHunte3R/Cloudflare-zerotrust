#!/usr/bin/env bash
set -euo pipefail

echo "=== cloudflared service ==="
systemctl is-active cloudflared

echo
echo "=== Recent logs ==="
journalctl -u cloudflared -n 30 --no-pager
