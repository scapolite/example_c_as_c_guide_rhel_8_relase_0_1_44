---
scapolite:
    class: rule
    version: '0.51'
id: sebool_telepathy_tcp_connect_generic_network_ports
id_namespace: org.ssgproject.RHEL-8
title: |
    Disable the telepathy\_tcp\_connect\_generic\_network\_ports SELinux
    Boolean
rule: <see below>
description: <see below>
applicability:
  - system: org.scapolite.xccdf.applicability
    severity: medium
  - system: https://scap.nist.gov/schema/cpe/2.2
    cpes:
      - cpe:/a:machine
checks:
  - relative_id: '01'
    automations:
      - system: http://scap.nist.gov/schema/ocil/2
        idref: ocil:ssg-sebool_telepathy_tcp_connect_generic_network_ports_ocil:questionnaire:1
        href: sebool_telepathy_tcp_connect_generic_network_ports.ocil.xml
---


## /rule

Disable the telepathy\_tcp\_connect\_generic\_network\_ports SELinux
Boolean

## /description

By
default, the SELinux boolean
`telepathy_tcp_connect_generic_network_ports` is enabled. This setting
should be disabled as `telepathy` should not connect to any generic
network ports. To disable the
`telepathy_tcp_connect_generic_network_ports` SELinux boolean, run the
following command:

``` 
$ sudo setsebool -P telepathy_tcp_connect_generic_network_ports off
```
