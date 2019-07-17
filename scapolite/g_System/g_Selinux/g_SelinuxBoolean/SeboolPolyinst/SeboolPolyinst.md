---
scapolite:
    class: rule
    version: '0.51'
id: sebool_polyinstantiation_enabled
id_namespace: org.ssgproject.RHEL-8
title: Disable the polyinstantiation\_enabled SELinux Boolean
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
        idref: ocil:ssg-sebool_polyinstantiation_enabled_ocil:questionnaire:1
        href: sebool_polyinstantiation_enabled.ocil.xml
---


## /rule

Disable the polyinstantiation\_enabled SELinux Boolean

## /description

By
default, the SELinux boolean `polyinstantiation_enabled` is disabled. If
this setting is enabled, it should be disabled. To disable the
`polyinstantiation_enabled` SELinux boolean, run the following command:

``` 
$ sudo setsebool -P polyinstantiation_enabled off
```
