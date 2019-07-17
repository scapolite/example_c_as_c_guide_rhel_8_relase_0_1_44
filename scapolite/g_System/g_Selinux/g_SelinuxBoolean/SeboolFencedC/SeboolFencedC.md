---
scapolite:
    class: rule
    version: '0.51'
id: sebool_fenced_can_ssh
id_namespace: org.ssgproject.RHEL-8
title: Disable the fenced\_can\_ssh SELinux Boolean
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
        idref: ocil:ssg-sebool_fenced_can_ssh_ocil:questionnaire:1
        href: sebool_fenced_can_ssh.ocil.xml
---


## /rule

Disable the fenced\_can\_ssh SELinux Boolean

## /description

By
default, the SELinux boolean `fenced_can_ssh` is disabled. If this
setting is enabled, it should be disabled. To disable the
`fenced_can_ssh` SELinux boolean, run the following command:

``` 
$ sudo setsebool -P fenced_can_ssh off
```
