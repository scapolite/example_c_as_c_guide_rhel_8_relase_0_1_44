---
scapolite:
    class: rule
    version: '0.51'
id: sebool_smartmon_3ware
id_namespace: org.ssgproject.RHEL-8
title: Disable the smartmon\_3ware SELinux Boolean
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
        idref: ocil:ssg-sebool_smartmon_3ware_ocil:questionnaire:1
        href: sebool_smartmon_3ware.ocil.xml
---


## /rule

Disable the smartmon\_3ware SELinux Boolean

## /description

By
default, the SELinux boolean `smartmon_3ware` is disabled. If this
setting is enabled, it should be disabled. To disable the
`smartmon_3ware` SELinux boolean, run the following command:

``` 
$ sudo setsebool -P smartmon_3ware off
```
