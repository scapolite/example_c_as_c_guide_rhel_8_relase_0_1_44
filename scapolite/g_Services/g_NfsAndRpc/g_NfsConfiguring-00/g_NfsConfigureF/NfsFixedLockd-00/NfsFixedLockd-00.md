---
scapolite:
    class: rule
    version: '0.51'
id: nfs_fixed_lockd_udp_port
id_namespace: org.ssgproject.RHEL-8
title: Configure lockd to use static UDP port
rule: <see below>
rationale: <see below>
description: <see below>
applicability:
  - system: org.scapolite.xccdf.applicability
---


## /rule

Configure lockd to use static UDP port

## /rationale

Restricting
services to always use a given port enables firewalling to be done more
effectively.

## /description

Configure
the `lockd` daemon to use a static UDP port as opposed to letting the
RPC Bind service dynamically assign a port. Edit the file
`/etc/sysconfig/nfs`. Add or correct the following line:

``` 
LOCKD_UDPPORT=lockd-port
```

Where `lockd-port` is a port which is not used by any other service on
your network.
