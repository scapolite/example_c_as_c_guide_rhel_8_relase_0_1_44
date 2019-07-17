---
scapolite:
    class: rule
    version: '0.51'
id: sebool_secure_mode
id_namespace: org.ssgproject.RHEL-8
title: Disable the secure\_mode SELinux Boolean
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
        idref: ocil:ssg-sebool_secure_mode_ocil:questionnaire:1
        href: sebool_secure_mode.ocil.xml
---


## /rule

Disable the secure\_mode SELinux Boolean

## /description

By
default, the SELinux boolean `secure_mode` is disabled. If this setting
is enabled, it should be disabled. To disable the `secure_mode` SELinux
boolean, run the following command:

``` 
$ sudo setsebool -P secure_mode off
```
