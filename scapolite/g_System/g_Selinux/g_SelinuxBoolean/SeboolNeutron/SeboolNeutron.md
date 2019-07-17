---
scapolite:
    class: rule
    version: '0.51'
id: sebool_neutron_can_network
id_namespace: org.ssgproject.RHEL-8
title: Disable the neutron\_can\_network SELinux Boolean
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
        idref: ocil:ssg-sebool_neutron_can_network_ocil:questionnaire:1
        href: sebool_neutron_can_network.ocil.xml
---


## /rule

Disable the neutron\_can\_network SELinux Boolean

## /description

By
default, the SELinux boolean `neutron_can_network` is disabled. If this
setting is enabled, it should be disabled. To disable the
`neutron_can_network` SELinux boolean, run the following command:

``` 
$ sudo setsebool -P neutron_can_network off
```
