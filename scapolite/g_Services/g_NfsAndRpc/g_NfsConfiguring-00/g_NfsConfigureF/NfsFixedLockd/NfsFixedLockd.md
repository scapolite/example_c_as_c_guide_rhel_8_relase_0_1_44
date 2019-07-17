---
scapolite:
    class: rule
    version: '0.51'
id: nfs_fixed_lockd_tcp_port
id_namespace: org.ssgproject.RHEL-8
title: Configure lockd to use static TCP port
rule: <see below>
rationale: <see below>
description: <see below>
applicability:
  - system: org.scapolite.xccdf.applicability
---


## /rule

Configure lockd to use static TCP port

## /rationale

Restrict
service to always use a given port, so that firewalling can be done
effectively.

## /description

Configure
the `lockd` daemon to use a static TCP port as opposed to letting the
RPC Bind service dynamically assign a port. Edit the file
`/etc/sysconfig/nfs`. Add or correct the following line:

``` 
LOCKD_TCPPORT=lockd-port
```

Where `lockd-port` is a port which is not used by any other service on
your network.
