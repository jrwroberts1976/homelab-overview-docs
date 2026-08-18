# Homelab Service Catalogue

## Purpose

This catalogue defines the core services operated within the homelab environment.

## Service Model

Each service should document:

- Purpose
- Business/technical owner
- Users and consumers
- Dependencies
- Availability expectations
- Monitoring
- Backup requirements
- Recovery process
- Security considerations

## Core Services

### Monitoring Platform

**Purpose:** Central observability platform.

Components:

- Prometheus
- Grafana
- Loki
- Alloy
- cAdvisor
- Node Exporter

Capabilities:

- Infrastructure metrics
- Container monitoring
- Log aggregation
- Security dashboards
- Operational alerting

---

### Security Monitoring Platform

**Purpose:** Detect, investigate and manage security events.

Components:

- Suricata IDS
- CrowdSec
- Greenbone vulnerability management
- Security reporting automation

Capabilities:

- Network intrusion detection
- Threat intelligence correlation
- Vulnerability scanning
- Security reporting

---

### DNS Security Platform

**Purpose:** Protect clients through DNS filtering and local resolution.

Components:

- Pi-hole
- Unbound

Capabilities:

- Advertising blocking
- Threat intelligence blocking
- Privacy controls
- DNS telemetry

---

### Backup Platform

**Purpose:** Provide recoverability for infrastructure and configuration.

Components:

- Restic
- Off-host replication
- Restore validation testing

Controls:

- Backup verification
- Repository integrity checks
- Restore testing

---

### Container Platform

**Purpose:** Host application workloads.

Components:

- Docker
- Portainer
- Watchtower
- WUD

Operational controls:

- Image updates
- Vulnerability review
- Container monitoring
