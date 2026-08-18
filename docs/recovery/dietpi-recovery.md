# DietPi Recovery Runbook

## Purpose

DietPi provides primary DNS services.

## Hosted Services

- Pi-hole
- Unbound
- DNS filtering and blocklists

## Recovery Priority

Priority 1 because DNS availability affects the complete environment.

## Recovery Steps

1. Restore DietPi operating system.
2. Restore Pi-hole configuration.
3. Restore Unbound configuration.
4. Restore custom scripts and monitoring integrations.
5. Validate DNS operation.

## Validation

Check:

```bash
pihole status
dig example.com
```

Confirm DNS resolution and security blocking are working.
