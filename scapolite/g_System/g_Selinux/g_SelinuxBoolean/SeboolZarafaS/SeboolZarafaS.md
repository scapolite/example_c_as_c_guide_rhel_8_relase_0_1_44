---
scapolite:
    class: rule
    version: '0.51'
id: sebool_zarafa_setrlimit
id_namespace: org.ssgproject.RHEL-8
title: Disable the zarafa\_setrlimit SELinux Boolean
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
        idref: ocil:ssg-sebool_zarafa_setrlimit_ocil:questionnaire:1
        href: sebool_zarafa_setrlimit.ocil.xml
---


## /rule

Disable the zarafa\_setrlimit SELinux Boolean

## /description

By
default, the SELinux boolean `zarafa_setrlimit` is disabled. If this
setting is enabled, it should be disabled. To disable the
`zarafa_setrlimit` SELinux boolean, run the following command:

``` 
$ sudo setsebool -P zarafa_setrlimit off
```
