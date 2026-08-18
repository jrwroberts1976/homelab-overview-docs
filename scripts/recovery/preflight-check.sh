#!/bin/bash
set -euo pipefail

HOST="$(hostname)"

printf 'Homelab Recovery Preflight - %s\n' "$HOST"
printf '%*s\n' 40 '' | tr ' ' '-'

checks=(
  "ssh:$(systemctl is-active ssh 2>/dev/null || true)"
  "network:$(ip route | grep default >/dev/null && echo OK || echo FAIL)"
  "disk:$(df / --output=pcent | tail -1)"
  "docker:$(systemctl is-active docker 2>/dev/null || true)"
)

for check in "${checks[@]}"; do
  echo "$check"
done

exit 0
