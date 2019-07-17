---
scapolite:
    class: rule
    version: '0.51'
id: service_rpcgssd_disabled
id_namespace: org.ssgproject.RHEL-8
title: Disable Secure RPC Client Service (rpcgssd)
rule: <see below>
description: <see below>
applicability:
  - system: org.scapolite.xccdf.applicability
---


## /rule

Disable Secure RPC Client Service (rpcgssd)

## /description

The
rpcgssd service manages RPCSEC GSS contexts required to secure protocols
that use RPC (most often Kerberos and NFS). The rpcgssd service is the
client-side of RPCSEC GSS. If the system does not require secure RPC
then this service should be disabled. The `rpcgssd` service can be
disabled with the following command:

``` 
$ sudo systemctl disable rpcgssd.service
```
