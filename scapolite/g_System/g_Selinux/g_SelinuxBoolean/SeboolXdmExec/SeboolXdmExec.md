---
scapolite:
    class: rule
    version: '0.51'
id: sebool_xdm_exec_bootloader
id_namespace: org.ssgproject.RHEL-8
title: Disable the xdm\_exec\_bootloader SELinux Boolean
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
        idref: ocil:ssg-sebool_xdm_exec_bootloader_ocil:questionnaire:1
        href: sebool_xdm_exec_bootloader.ocil.xml
---


## /rule

Disable the xdm\_exec\_bootloader SELinux Boolean

## /description

By
default, the SELinux boolean `xdm_exec_bootloader` is disabled. If this
setting is enabled, it should be disabled. To disable the
`xdm_exec_bootloader` SELinux boolean, run the following command:

``` 
$ sudo setsebool -P xdm_exec_bootloader off
```
