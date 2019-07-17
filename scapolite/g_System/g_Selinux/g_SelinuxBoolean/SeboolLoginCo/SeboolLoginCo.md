---
scapolite:
    class: rule
    version: '0.51'
id: sebool_login_console_enabled
id_namespace: org.ssgproject.RHEL-8
title: Enable the login\_console\_enabled SELinux Boolean
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
        idref: ocil:ssg-sebool_login_console_enabled_ocil:questionnaire:1
        href: sebool_login_console_enabled.ocil.xml
---


## /rule

Enable the login\_console\_enabled SELinux Boolean

## /description

By
default, the SELinux boolean `login_console_enabled` is enabled. If this
setting is disabled, it should be enabled as it allows login from
`/dev/console` to a console session. To enable the
`login_console_enabled` SELinux boolean, run the following command:

``` 
$ sudo setsebool -P login_console_enabled on
```
