# k3s-node-01 Recovery Runbook

## Purpose

k3s-node-01 provides Kubernetes worker capacity.

## Recovery Steps

1. Rebuild operating system.
2. Restore network configuration.
3. Install required packages.
4. Rejoin the k3s cluster as a worker node.
5. Restore node-specific configuration.

## Validation

Check cluster health:

```bash
kubectl get nodes
```

Expected result:

- node reports Ready
- workloads schedule correctly
- monitoring returns healthy metrics
