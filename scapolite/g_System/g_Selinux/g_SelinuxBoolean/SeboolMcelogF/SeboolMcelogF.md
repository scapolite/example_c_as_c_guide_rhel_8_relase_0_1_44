---
scapolite:
    class: rule
    version: '0.51'
id: sebool_mcelog_foreground
id_namespace: org.ssgproject.RHEL-8
title: Disable the mcelog\_foreground SELinux Boolean
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
        idref: ocil:ssg-sebool_mcelog_foreground_ocil:questionnaire:1
        href: sebool_mcelog_foreground.ocil.xml
---


## /rule

Disable the mcelog\_foreground SELinux Boolean

## /description

By
default, the SELinux boolean `mcelog_foreground` is disabled. If this
setting is enabled, it should be disabled. To disable the
`mcelog_foreground` SELinux boolean, run the following command:

``` 
$ sudo setsebool -P mcelog_foreground off
```
