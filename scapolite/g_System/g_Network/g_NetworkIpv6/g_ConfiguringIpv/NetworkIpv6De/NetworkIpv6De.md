---
scapolite:
    class: rule
    version: '0.51'
id: network_ipv6_default_gateway
id_namespace: org.ssgproject.RHEL-8
title: Manually Assign IPv6 Router Address
rule: <see below>
description: <see below>
applicability:
  - system: org.scapolite.xccdf.applicability
checks:
  - relative_id: '01'
    automations:
      - system: http://oval.mitre.org/XMLSchema/oval-definitions-5
        idref: oval:ssg-network_ipv6_default_gateway:def:1
        href: network_ipv6_default_gateway.oval.xml
crossrefs:
  - system: http://iase.disa.mil/stigs/cci/Pages/index.aspx
    idref: CCI-000366
    relation: ''
---


## /rule

Manually Assign IPv6 Router Address

## /description

Edit
the file `/etc/sysconfig/network-scripts/ifcfg-interface`, and add or
correct the following line (substituting your gateway IP as
appropriate):

``` 
IPV6_DEFAULTGW=2001:0DB8::0001
```

Router addresses should be manually set and not accepted via any
auto-configuration or router advertisement.
