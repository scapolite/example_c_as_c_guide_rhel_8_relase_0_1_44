---
scapolite:
    class: rule
    version: '0.51'
id: sebool_cups_execmem
id_namespace: org.ssgproject.RHEL-8
title: Disable the cups\_execmem SELinux Boolean
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
        idref: ocil:ssg-sebool_cups_execmem_ocil:questionnaire:1
        href: sebool_cups_execmem.ocil.xml
---


## /rule

Disable the cups\_execmem SELinux Boolean

## /description

By
default, the SELinux boolean `cups_execmem` is disabled. If this setting
is enabled, it should be disabled. To disable the `cups_execmem` SELinux
boolean, run the following command:

``` 
$ sudo setsebool -P cups_execmem off
```
