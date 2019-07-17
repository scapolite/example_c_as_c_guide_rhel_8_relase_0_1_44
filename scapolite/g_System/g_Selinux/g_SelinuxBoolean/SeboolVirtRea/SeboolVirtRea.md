---
scapolite:
    class: rule
    version: '0.51'
id: sebool_virt_read_qemu_ga_data
id_namespace: org.ssgproject.RHEL-8
title: Disable the virt\_read\_qemu\_ga\_data SELinux Boolean
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
        idref: ocil:ssg-sebool_virt_read_qemu_ga_data_ocil:questionnaire:1
        href: sebool_virt_read_qemu_ga_data.ocil.xml
---


## /rule

Disable the virt\_read\_qemu\_ga\_data SELinux Boolean

## /description

By
default, the SELinux boolean `virt_read_qemu_ga_data` is disabled. If
this setting is enabled, it should be disabled. To disable the
`virt_read_qemu_ga_data` SELinux boolean, run the following command:

``` 
$ sudo setsebool -P virt_read_qemu_ga_data off
```
