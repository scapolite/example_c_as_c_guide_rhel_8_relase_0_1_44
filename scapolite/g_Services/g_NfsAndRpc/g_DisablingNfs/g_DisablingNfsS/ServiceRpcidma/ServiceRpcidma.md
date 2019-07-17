---
scapolite:
    class: rule
    version: '0.51'
id: service_rpcidmapd_disabled
id_namespace: org.ssgproject.RHEL-8
title: Disable RPC ID Mapping Service (rpcidmapd)
rule: <see below>
description: <see below>
applicability:
  - system: org.scapolite.xccdf.applicability
---


## /rule

Disable RPC ID Mapping Service (rpcidmapd)

## /description

The
rpcidmapd service is used to map user names and groups to UID and GID
numbers on NFSv4 mounts. If NFS is not in use on the local system then
this service should be disabled. The `rpcidmapd` service can be disabled
with the following command:

``` 
$ sudo systemctl disable rpcidmapd.service
```
