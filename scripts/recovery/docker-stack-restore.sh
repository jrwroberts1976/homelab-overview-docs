#!/bin/bash
set -euo pipefail

STACK_DIR="${1:-}"

if [ -z "$STACK_DIR" ]; then
  echo "Usage: $0 /path/to/docker/stack"
  exit 1
fi

if [ ! -d "$STACK_DIR" ]; then
  echo "Stack directory not found: $STACK_DIR"
  exit 1
fi

cd "$STACK_DIR"

if [ -f compose.yml ]; then
  docker compose pull
  docker compose up -d
elif [ -f docker-compose.yml ]; then
  docker compose pull
  docker compose up -d
else
  echo "No compose file found"
  exit 1
fi

docker compose ps
