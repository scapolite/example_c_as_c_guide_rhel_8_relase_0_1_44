---
scapolite:
    class: rule
    version: '0.51'
id: sebool_daemons_use_tty
id_namespace: org.ssgproject.RHEL-8
title: Disable the daemons\_use\_tty SELinux Boolean
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
        idref: ocil:ssg-sebool_daemons_use_tty_ocil:questionnaire:1
        href: sebool_daemons_use_tty.ocil.xml
---


## /rule

Disable the daemons\_use\_tty SELinux Boolean

## /description

By
default, the SELinux boolean `daemons_use_tty` is disabled. If this
setting is enabled, it should be disabled. To disable the
`daemons_use_tty` SELinux boolean, run the following command:

``` 
$ sudo setsebool -P daemons_use_tty off
```
