---
scapolite:
    class: rule
    version: '0.51'
id: network_ipv6_static_address
id_namespace: org.ssgproject.RHEL-8
title: Manually Assign Global IPv6 Address
rule: <see below>
description: <see below>
applicability:
  - system: org.scapolite.xccdf.applicability
checks:
  - relative_id: '01'
    automations:
      - system: http://oval.mitre.org/XMLSchema/oval-definitions-5
        idref: oval:ssg-network_ipv6_static_address:def:1
        href: network_ipv6_static_address.oval.xml
crossrefs:
  - system: http://iase.disa.mil/stigs/cci/Pages/index.aspx
    idref: CCI-000366
    relation: ''
---


## /rule

Manually Assign Global IPv6 Address

## /description

To
manually assign an IP address for an interface, edit the file
`/etc/sysconfig/network-scripts/ifcfg-interface`. Add or correct the
following line (substituting the correct IPv6 address):

``` 
IPV6ADDR=2001:0DB8::ABCD/64
```

Manually assigning an IP address is preferable to accepting one from
routers or from the network otherwise. The example address here is an
IPv6 address reserved for documentation purposes, as defined by RFC3849.
