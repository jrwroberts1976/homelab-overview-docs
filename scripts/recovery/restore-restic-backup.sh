#!/usr/bin/env bash
set -euo pipefail

# Restic recovery helper
#
# Purpose:
#   Provide a repeatable recovery workflow for homelab hosts.
#
# Usage:
#   sudo ./restore-restic-backup.sh <snapshot> <target>
#
# Example:
#   sudo ./restore-restic-backup.sh latest /mnt/recovery
#
# Required environment:
#   RESTIC_REPOSITORY
#   RESTIC_PASSWORD_FILE

SNAPSHOT="${1:-latest}"
TARGET="${2:-/restore}"

if [[ -z "${RESTIC_REPOSITORY:-}" ]]; then
    echo "ERROR: RESTIC_REPOSITORY is not set"
    exit 1
fi

if [[ -z "${RESTIC_PASSWORD_FILE:-}" ]]; then
    echo "ERROR: RESTIC_PASSWORD_FILE is not set"
    exit 1
fi

command -v restic >/dev/null || {
    echo "ERROR: restic is not installed"
    exit 1
}

mkdir -p "$TARGET"

echo "Checking repository..."
restic check

echo "Available snapshots:"
restic snapshots

echo "Restoring snapshot: $SNAPSHOT"
echo "Target: $TARGET"

read -r -p "Continue with restore? (yes/no): " confirm

if [[ "$confirm" != "yes" ]]; then
    echo "Restore cancelled"
    exit 0
fi

restic restore "$SNAPSHOT" --target "$TARGET"

echo "Restore complete"
echo "Validate restored data before replacing live services"
