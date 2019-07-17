---
scapolite:
    class: rule
    version: '0.51'
id: sebool_global_ssp
id_namespace: org.ssgproject.RHEL-8
title: Disable the global\_ssp SELinux Boolean
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
        idref: ocil:ssg-sebool_global_ssp_ocil:questionnaire:1
        href: sebool_global_ssp.ocil.xml
---


## /rule

Disable the global\_ssp SELinux Boolean

## /description

By
default, the SELinux boolean `global_ssp` is disabled. If this setting
is enabled, it should be disabled. To disable the `global_ssp` SELinux
boolean, run the following command:

``` 
$ sudo setsebool -P global_ssp off
```
