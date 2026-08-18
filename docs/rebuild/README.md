# Homelab Rebuild Guide

## Purpose

This document defines the recovery approach for rebuilding the homelab from a known state.

The objective is not only to restore services, but to restore the design decisions, security controls and operational processes that make the platform reliable.

## Recovery Principles

1. Restore the foundation first.
2. Restore security and monitoring before applications.
3. Validate each layer before moving to the next.
4. Record changes through the documentation repository.

## Rebuild Order

### Phase 1 — Infrastructure Foundation

- Physical hardware verification
- Network connectivity
- Host operating systems
- User access
- SSH keys
- Time synchronisation

### Phase 2 — Core Platform Services

Restore:

- Docker platform
- k3s platform
- Persistent storage
- Reverse proxy services
- Authentication services

### Phase 3 — Monitoring and Operations

Restore:

- Prometheus
- Grafana
- Loki
- Alloy
- Node exporters
- Alerting

### Phase 4 — Security Controls

Restore:

- Suricata IDS
- CrowdSec
- Greenbone vulnerability scanning
- Pi-hole and Unbound DNS security

### Phase 5 — Data Recovery

Validate:

- Backup repositories
- Repository integrity
- Restore tests
- Application data

## Validation

A rebuild is complete only when:

- Monitoring is healthy
- Backups are validated
- Security controls are active
- Services are operational
- Documentation reflects the current state
