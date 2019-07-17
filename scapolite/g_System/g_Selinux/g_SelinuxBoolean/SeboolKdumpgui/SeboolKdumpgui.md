---
scapolite:
    class: rule
    version: '0.51'
id: sebool_kdumpgui_run_bootloader
id_namespace: org.ssgproject.RHEL-8
title: Disable the kdumpgui\_run\_bootloader SELinux Boolean
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
        idref: ocil:ssg-sebool_kdumpgui_run_bootloader_ocil:questionnaire:1
        href: sebool_kdumpgui_run_bootloader.ocil.xml
---


## /rule

Disable the kdumpgui\_run\_bootloader SELinux Boolean

## /description

By
default, the SELinux boolean `kdumpgui_run_bootloader` is disabled. If
this setting is enabled, it should be disabled. To disable the
`kdumpgui_run_bootloader` SELinux boolean, run the following command:

``` 
$ sudo setsebool -P kdumpgui_run_bootloader off
```
