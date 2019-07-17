---
scapolite:
    class: rule
    version: '0.51'
id: sebool_boinc_execmem
id_namespace: org.ssgproject.RHEL-8
title: Disable the boinc\_execmem SELinux Boolean
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
        idref: ocil:ssg-sebool_boinc_execmem_ocil:questionnaire:1
        href: sebool_boinc_execmem.ocil.xml
crossrefs:
  - system: http://nvlpubs.nist.gov/nistpubs/SpecialPublications/NIST.SP.800-171.pdf
    idref: 3.7.2
    relation: ''
---


## /rule

Disable the boinc\_execmem SELinux Boolean

## /description

By
default, the SELinux boolean `boinc_execmem` is enabled. This setting
should be disabled. To disable the `boinc_execmem` SELinux boolean, run
the following command:

``` 
$ sudo setsebool -P boinc_execmem off
```
