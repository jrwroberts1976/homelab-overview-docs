#!/bin/bash
set -euo pipefail

OUT="${1:-backup-manifest-$(hostname)-$(date +%F).txt}"

{
 echo "Host: $(hostname)"
 echo "Date: $(date -Is)"
 echo
 echo "Filesystem"
 df -h
 echo
 echo "Services"
 systemctl list-units --type=service --state=running
 echo
 echo "Docker Containers"
 docker ps --format 'table {{.Names}}\t{{.Image}}\t{{.Status}}' 2>/dev/null || true
 echo
 echo "Network"
 ip addr
} > "$OUT"

echo "Created $OUT"
