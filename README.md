# Homelab Service Documentation

This repository contains the operational service documentation for the homelab platform.

The documentation is written using an IT service management approach covering:

- Service ownership
- Architecture
- Dependencies
- Operational procedures
- Monitoring and alerting
- Backup and recovery
- Security controls
- Change management
- Known risks and accepted risks

## Service Catalogue

| Service | Purpose | Status |
|---|---|---|
| Monitoring Platform | Prometheus, Grafana, Loki, Alloy, cAdvisor | Active |
| Security Monitoring | Suricata, CrowdSec, Greenbone | Active |
| DNS Security | Pi-hole and Unbound | Active |
| Container Platform | Docker workloads and supporting services | Active |
| Kubernetes Platform | k3s cluster services | Active |
| Backup Platform | Restic backup and recovery | Active |
| CI/CD Platform | Jenkins delivery lab | Active |

## Documentation Structure

```
docs/
├── service-catalogue.md
├── architecture.md
├── operations.md
├── monitoring.md
├── security.md
├── backup-and-recovery.md
├── change-management.md
├── disaster-recovery.md
└── services/
    ├── monitoring-platform.md
    ├── security-platform.md
    ├── dns-security.md
    ├── backup-platform.md
    └── container-platform.md
```

## Documentation Principles

- Production-like operational discipline
- Evidence-based changes
- Security-first design
- Document before significant change
- Capture lessons learned
