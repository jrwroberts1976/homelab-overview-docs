# Host Recovery Runbooks

Recovery documentation is organised by host rather than service.

The recovery approach is:

1. Restore the host operating system and connectivity.
2. Restore configuration and application data from backup.
3. Start platform services.
4. Validate monitoring, security and application health.

## Recovery Order

1. DietPi - primary DNS
2. ids-01 - security and monitoring platform
3. TestServer - Docker application platform
4. k3s-node-01 - Kubernetes worker

## Validation Principle

A successful backup restore is not complete until services, monitoring and security controls have been validated.
