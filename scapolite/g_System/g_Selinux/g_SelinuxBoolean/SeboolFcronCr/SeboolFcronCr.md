---
scapolite:
    class: rule
    version: '0.51'
id: sebool_fcron_crond
id_namespace: org.ssgproject.RHEL-8
title: Disable the fcron\_crond SELinux Boolean
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
        idref: ocil:ssg-sebool_fcron_crond_ocil:questionnaire:1
        href: sebool_fcron_crond.ocil.xml
---


## /rule

Disable the fcron\_crond SELinux Boolean

## /description

By
default, the SELinux boolean `fcron_crond` is disabled. If this setting
is enabled, it should be disabled. To disable the `fcron_crond` SELinux
boolean, run the following command:

``` 
$ sudo setsebool -P fcron_crond off
```
