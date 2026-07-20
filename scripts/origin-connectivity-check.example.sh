#!/usr/bin/env bash
set -euo pipefail

ORIGIN_URL="${1:-http://192.0.2.20:8080}"

echo "Testing sanitized example origin: ${ORIGIN_URL}"
curl --fail --silent --show-error --head "${ORIGIN_URL}"
