---
scapolite:
    class: rule
    version: '0.51'
id: sebool_named_write_master_zones
id_namespace: org.ssgproject.RHEL-8
title: Disable the named\_write\_master\_zones SELinux Boolean
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
        idref: ocil:ssg-sebool_named_write_master_zones_ocil:questionnaire:1
        href: sebool_named_write_master_zones.ocil.xml
---


## /rule

Disable the named\_write\_master\_zones SELinux Boolean

## /description

By
default, the SELinux boolean `named_write_master_zones` is disabled. If
this setting is enabled, it should be disabled. To disable the
`named_write_master_zones` SELinux boolean, run the following command:

``` 
$ sudo setsebool -P named_write_master_zones off
```
