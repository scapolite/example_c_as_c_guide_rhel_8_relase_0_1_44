---
scapolite:
    class: rule
    version: '0.51'
id: network_ipv6_disable_interfaces
id_namespace: org.ssgproject.RHEL-8
title: Disable Interface Usage of IPv6
rule: <see below>
description: <see below>
applicability:
  - system: org.scapolite.xccdf.applicability
---


## /rule

Disable Interface Usage of IPv6

## /description

To
disable interface usage of IPv6, add or correct the following lines in
`/etc/sysconfig/network`:

``` 
NETWORKING_IPV6=no
IPV6INIT=no
```
