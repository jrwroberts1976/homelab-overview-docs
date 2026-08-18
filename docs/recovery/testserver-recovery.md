# TestServer Recovery Runbook

## Purpose

TestServer is the primary Docker application platform.

## Hosted Services

- Docker workloads
- Portainer
- Reverse proxy services
- Authentication services
- Jenkins delivery platform
- Application containers

## Recovery Steps

1. Rebuild operating system.
2. Install Docker and compose tooling.
3. Restore Docker configuration, stacks and environment files.
4. Restore persistent application data.
5. Start compose stacks.

## Validation

Check:

```bash
docker ps
docker compose ps
```

Confirm applications, volumes and monitoring integrations are healthy.
