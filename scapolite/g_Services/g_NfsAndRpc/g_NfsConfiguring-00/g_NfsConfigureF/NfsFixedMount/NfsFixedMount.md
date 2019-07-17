---
scapolite:
    class: rule
    version: '0.51'
id: nfs_fixed_mountd_port
id_namespace: org.ssgproject.RHEL-8
title: Configure mountd to use static port
rule: <see below>
rationale: <see below>
description: <see below>
applicability:
  - system: org.scapolite.xccdf.applicability
---


## /rule

Configure mountd to use static port

## /rationale

Restricting
services to always use a given port enables firewalling to be done more
effectively.

## /description

Configure
the `mountd` daemon to use a static port as opposed to letting the RPC
Bind service dynamically assign a port. Edit the file
`/etc/sysconfig/nfs`. Add or correct the following line:

``` 
MOUNTD_PORT=statd-port
```

Where `mountd-port` is a port which is not used by any other service on
your network.
