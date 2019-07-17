---
scapolite:
    class: rule
    version: '0.51'
id: sebool_antivirus_can_scan_system
id_namespace: org.ssgproject.RHEL-8
title: Enable the antivirus\_can\_scan\_system SELinux Boolean
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
        idref: ocil:ssg-sebool_antivirus_can_scan_system_ocil:questionnaire:1
        href: sebool_antivirus_can_scan_system.ocil.xml
crossrefs:
  - system: http://nvlpubs.nist.gov/nistpubs/SpecialPublications/NIST.SP.800-171.pdf
    idref: 3.7.2
    relation: ''
---


## /rule

Enable the antivirus\_can\_scan\_system SELinux Boolean

## /description

By
default, the SELinux boolean `antivirus_can_scan_system` is disabled.
This setting should be enabled as it allows antivirus programs to read
non-security files on a system. To enable the
`antivirus_can_scan_system` SELinux boolean, run the following command:

``` 
$ sudo setsebool -P antivirus_can_scan_system on
```
