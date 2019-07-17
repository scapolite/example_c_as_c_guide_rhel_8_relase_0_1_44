---
scapolite:
    class: rule
    version: '0.51'
id: sebool_xserver_object_manager
id_namespace: org.ssgproject.RHEL-8
title: Disable the xserver\_object\_manager SELinux Boolean
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
        idref: ocil:ssg-sebool_xserver_object_manager_ocil:questionnaire:1
        href: sebool_xserver_object_manager.ocil.xml
---


## /rule

Disable the xserver\_object\_manager SELinux Boolean

## /description

By
default, the SELinux boolean `xserver_object_manager` is disabled. If
this setting is enabled, it should be disabled. To disable the
`xserver_object_manager` SELinux boolean, run the following command:

``` 
$ sudo setsebool -P xserver_object_manager off
```
