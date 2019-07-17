---
scapolite:
    class: rule
    version: '0.51'
id: sebool_mmap_low_allowed
id_namespace: org.ssgproject.RHEL-8
title: Disable the mmap\_low\_allowed SELinux Boolean
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
        idref: ocil:ssg-sebool_mmap_low_allowed_ocil:questionnaire:1
        href: sebool_mmap_low_allowed.ocil.xml
---


## /rule

Disable the mmap\_low\_allowed SELinux Boolean

## /description

By
default, the SELinux boolean `mmap_low_allowed` is disabled. If this
setting is enabled, it should be disabled. To disable the
`mmap_low_allowed` SELinux boolean, run the following command:

``` 
$ sudo setsebool -P mmap_low_allowed off
```
