---
scapolite:
    class: rule
    version: '0.51'
id: service_nfslock_disabled
id_namespace: org.ssgproject.RHEL-8
title: Disable Network File System Lock Service (nfslock)
rule: <see below>
description: <see below>
applicability:
  - system: org.scapolite.xccdf.applicability
---


## /rule

Disable Network File System Lock Service (nfslock)

## /description

The
Network File System Lock (nfslock) service starts the required remote
procedure call (RPC) processes which allow clients to lock files on the
server. If the local system is not configured to mount NFS filesystems
then this service should be disabled. The `nfslock` service can be
disabled with the following command:

``` 
$ sudo systemctl disable nfslock.service
```
