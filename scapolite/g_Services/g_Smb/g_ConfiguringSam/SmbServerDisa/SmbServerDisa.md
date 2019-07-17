---
scapolite:
    class: rule
    version: '0.51'
id: smb_server_disable_root
id_namespace: org.ssgproject.RHEL-8
title: Disable Root Access to SMB Shares
rule: <see below>
rationale: <see below>
description: <see below>
applicability:
  - system: org.scapolite.xccdf.applicability
---


## /rule

Disable Root Access to SMB Shares

## /rationale

Typically,
administrator access is required when Samba must create user and system
accounts and shares. Domain member servers and standalone servers may
not need administrator access at all. If that is the case, add the
invalid users parameter to `[global]` instead.

## /description

Administrators
should not use administrator accounts to access Samba file and printer
shares. Disable the root user and the wheel administrator group:

``` 
[share]
  invalid users = root @wheel
```

If administrator accounts cannot be disabled, ensure that local system
passwords and Samba service passwords do not match.
