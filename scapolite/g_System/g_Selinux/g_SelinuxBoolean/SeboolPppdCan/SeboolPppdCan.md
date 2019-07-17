---
scapolite:
    class: rule
    version: '0.51'
id: sebool_pppd_can_insmod
id_namespace: org.ssgproject.RHEL-8
title: Disable the pppd\_can\_insmod SELinux Boolean
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
        idref: ocil:ssg-sebool_pppd_can_insmod_ocil:questionnaire:1
        href: sebool_pppd_can_insmod.ocil.xml
---


## /rule

Disable the pppd\_can\_insmod SELinux Boolean

## /description

By
default, the SELinux boolean `pppd_can_insmod` is disabled. If this
setting is enabled, it should be disabled. To disable the
`pppd_can_insmod` SELinux boolean, run the following command:

``` 
$ sudo setsebool -P pppd_can_insmod off
```
