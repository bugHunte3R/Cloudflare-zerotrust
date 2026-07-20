#!/usr/bin/env bash
set -euo pipefail

: "${CF_ACCESS_CLIENT_ID:?Set CF_ACCESS_CLIENT_ID}"
: "${CF_ACCESS_CLIENT_SECRET:?Set CF_ACCESS_CLIENT_SECRET}"

curl --fail --silent --show-error \
  -H "CF-Access-Client-Id: ${CF_ACCESS_CLIENT_ID}" \
  -H "CF-Access-Client-Secret: ${CF_ACCESS_CLIENT_SECRET}" \
  "https://service.example.com/health"
