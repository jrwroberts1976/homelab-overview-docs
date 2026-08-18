#!/bin/bash
set -euo pipefail

printf 'Homelab Service Recovery Validation\n'
printf '%*s\n' 40 '' | tr ' ' '-'

services=(
 docker
 ssh
)

for service in "${services[@]}"; do
  printf '%-20s %s\n' "$service" "$(systemctl is-active "$service" 2>/dev/null || echo missing)"
done

if command -v docker >/dev/null; then
 echo
 echo "Docker containers"
 docker ps --format '{{.Names}} : {{.Status}}'
fi

if command -v curl >/dev/null; then
 echo
 echo "Local HTTP checks"
 curl -fsS http://localhost:9090/-/healthy >/dev/null && echo "Prometheus OK" || true
fi
