---
scapolite:
    class: rule
    version: '0.51'
id: service_rpcbind_disabled
id_namespace: org.ssgproject.RHEL-8
title: Disable rpcbind Service
rule: <see below>
description: <see below>
applicability:
  - system: org.scapolite.xccdf.applicability
  - system: https://scap.nist.gov/schema/cpe/2.2
    cpes:
      - cpe:/a:machine
crossrefs:
  - system: org.scapolite.unknown
    idref: 2.2.7
    relation: ''
---


## /rule

Disable rpcbind Service

## /description

The
rpcbind utility maps RPC services to the ports on which they listen. RPC
processes notify rpcbind when they start, registering the ports they are
listening on and the RPC program numbers they expect to serve. The
rpcbind service redirects the client to the proper port number so it can
communicate with the requested service. If the system does not require
RPC (such as for NFS servers) then this service should be disabled. The
`rpcbind` service can be disabled with the following command:

``` 
$ sudo systemctl disable rpcbind.service
```
