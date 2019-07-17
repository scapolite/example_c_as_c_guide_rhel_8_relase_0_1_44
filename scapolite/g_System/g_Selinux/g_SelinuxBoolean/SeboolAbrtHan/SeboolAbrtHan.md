---
scapolite:
    class: rule
    version: '0.51'
id: sebool_abrt_handle_event
id_namespace: org.ssgproject.RHEL-8
title: Disable the abrt\_handle\_event SELinux Boolean
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
        idref: ocil:ssg-sebool_abrt_handle_event_ocil:questionnaire:1
        href: sebool_abrt_handle_event.ocil.xml
crossrefs:
  - system: http://nvlpubs.nist.gov/nistpubs/SpecialPublications/NIST.SP.800-171.pdf
    idref: 3.7.2
    relation: ''
---


## /rule

Disable the abrt\_handle\_event SELinux Boolean

## /description

By
default, the SELinux boolean `abrt_handle_event` is disabled. If this
setting is enabled, it should be disabled. To disable the
`abrt_handle_event` SELinux boolean, run the following command:

``` 
$ sudo setsebool -P abrt_handle_event off
```
