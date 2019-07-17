---
scapolite:
    class: rule
    version: '0.51'
id: kernel_disable_entropy_contribution_for_solid_state_drives
id_namespace: org.ssgproject.RHEL-8
title: |
    Ensure Solid State Drives Do Not Contribute To Random-Number Entropy
    Pool
rule: <see below>
rationale: <see below>
description: <see below>
applicability:
  - system: org.scapolite.xccdf.applicability
    severity: medium
---


## /rule

Ensure Solid State Drives Do Not Contribute To Random-Number Entropy
Pool

## /rationale

In
contrast to traditional electromechanical magnetic disks, containing
spinning disks and / or movable read / write heads, the solid-state
storage devices (SSDs) do not contain moving / mechanical components.
Therefore the I/O operation completion times are much more predictable
for them.

## /description

For
each solid-state drive on the system, run:

``` 
 # echo 0 > /sys/block/DRIVE/queue/add_random
```
