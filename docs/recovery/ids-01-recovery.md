# ids-01 Recovery Runbook

## Purpose

ids-01 provides security monitoring and operational visibility.

## Hosted Services

- Suricata IDS
- Greenbone vulnerability management
- CrowdSec
- Prometheus
- Grafana
- Loki
- Alloy
- Pi-hole secondary DNS

## Recovery Priority

Priority 1. Restore this host early because it provides security and monitoring capability.

## Recovery Steps

1. Install operating system and apply updates.
2. Restore `/etc`, `/usr/local`, Docker stacks and configuration files.
3. Restore security platform configuration.
4. Start containers and system services.

## Validation

Confirm:

- Docker services running
- Prometheus targets healthy
- Grafana dashboards available
- Loki receiving logs
- Suricata events flowing
- CrowdSec healthy
- Greenbone scans available
- Pi-hole DNS responding
