---
scapolite:
    class: rule
    version: '0.51'
id: dns_server_disable_zone_transfers
id_namespace: org.ssgproject.RHEL-8
title: Disable Zone Transfers from the Nameserver
rule: <see below>
rationale: <see below>
description: <see below>
applicability:
  - system: org.scapolite.xccdf.applicability
---


## /rule

Disable Zone Transfers from the Nameserver

## /rationale

If
both the primary and secondary nameserver are under your control, or if
you have only one nameserver, it may be possible to use an external
configuration management mechanism to distribute zone updates. In that
case, it is not necessary to allow zone transfers within BIND itself, so
they should be disabled to avoid the potential for abuse.

## /description

Is
it necessary for a secondary nameserver to receive zone data via zone
transfer from the primary server? If not, follow the instructions in
this section. If so, see the next section for instructions on protecting
zone transfers. Add or correct the following directive within
`/etc/named.conf`:

``` 
options {
  allow-transfer { none; };
  ...
}
```
