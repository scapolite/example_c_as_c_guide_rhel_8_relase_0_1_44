---
scapolite:
    class: rule
    version: '0.51'
id: sebool_polipo_session_users
id_namespace: org.ssgproject.RHEL-8
title: Disable the polipo\_session\_users SELinux Boolean
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
        idref: ocil:ssg-sebool_polipo_session_users_ocil:questionnaire:1
        href: sebool_polipo_session_users.ocil.xml
---


## /rule

Disable the polipo\_session\_users SELinux Boolean

## /description

By
default, the SELinux boolean `polipo_session_users` is disabled. If this
setting is enabled, it should be disabled. To disable the
`polipo_session_users` SELinux boolean, run the following command:

``` 
$ sudo setsebool -P polipo_session_users off
```
