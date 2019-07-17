---
scapolite:
    class: rule
    version: '0.51'
id: network_ipv6_privacy_extensions
id_namespace: org.ssgproject.RHEL-8
title: Use Privacy Extensions for Address
rule: <see below>
description: <see below>
applicability:
  - system: org.scapolite.xccdf.applicability
implementations:
  - relative_id: '01'
    title: Automated fix
    automations:
      - system: urn:xccdf:fix:script:sh
        href: network_ipv6_privacy_extensions.sh
checks:
  - relative_id: '01'
    automations:
      - system: http://oval.mitre.org/XMLSchema/oval-definitions-5
        idref: oval:ssg-network_ipv6_privacy_extensions:def:1
        href: network_ipv6_privacy_extensions.oval.xml
crossrefs:
  - system: http://nvlpubs.nist.gov/nistpubs/SpecialPublications/NIST.SP.800-171.pdf
    idref: 3.1.20
    relation: ''
  - system: http://iase.disa.mil/stigs/cci/Pages/index.aspx
    idref: CCI-000366
    relation: ''
---


## /rule

Use Privacy Extensions for Address

## /description

To
introduce randomness into the automatic generation of IPv6 addresses,
add or correct the following line in
`/etc/sysconfig/network-scripts/ifcfg-interface`:

``` 
IPV6_PRIVACY=rfc3041
```

Automatically-generated IPv6 addresses are based on the underlying
hardware (e.g. Ethernet) address, and so it becomes possible to track a
piece of hardware over its lifetime using its traffic. If it is
important for a system\'s IP address to not trivially reveal its
hardware address, this setting should be applied.
