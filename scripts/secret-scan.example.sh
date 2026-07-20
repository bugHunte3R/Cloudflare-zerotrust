#!/usr/bin/env bash
set -euo pipefail

echo "Searching for common sensitive patterns..."

grep -RniE \
  '(api[_-]?token|client[_-]?secret|private[_-]?key|tunnel[_-]?token|account[_-]?id|zone[_-]?id|@gmail\.com|@outlook\.com)' \
  . \
  --exclude-dir=.git \
  --exclude='*.example.*' \
  || true
