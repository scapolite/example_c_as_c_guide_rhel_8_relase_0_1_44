---
scapolite:
    class: rule
    version: '0.51'
id: sebool_wine_mmap_zero_ignore
id_namespace: org.ssgproject.RHEL-8
title: Disable the wine\_mmap\_zero\_ignore SELinux Boolean
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
        idref: ocil:ssg-sebool_wine_mmap_zero_ignore_ocil:questionnaire:1
        href: sebool_wine_mmap_zero_ignore.ocil.xml
---


## /rule

Disable the wine\_mmap\_zero\_ignore SELinux Boolean

## /description

By
default, the SELinux boolean `wine_mmap_zero_ignore` is disabled. If
this setting is enabled, it should be disabled. To disable the
`wine_mmap_zero_ignore` SELinux boolean, run the following command:

``` 
$ sudo setsebool -P wine_mmap_zero_ignore off
```
