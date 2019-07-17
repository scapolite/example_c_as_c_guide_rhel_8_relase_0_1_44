---
scapolite:
    class: rule
    version: '0.51'
id: sebool_secure_mode_insmod
id_namespace: org.ssgproject.RHEL-8
title: Disable the secure\_mode\_insmod SELinux Boolean
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
        idref: ocil:ssg-sebool_secure_mode_insmod_ocil:questionnaire:1
        href: sebool_secure_mode_insmod.ocil.xml
---


## /rule

Disable the secure\_mode\_insmod SELinux Boolean

## /description

By
default, the SELinux boolean `secure_mode_insmod` is disabled. If this
setting is enabled, it should be disabled. To disable the
`secure_mode_insmod` SELinux boolean, run the following command:

``` 
$ sudo setsebool -P secure_mode_insmod off
```
