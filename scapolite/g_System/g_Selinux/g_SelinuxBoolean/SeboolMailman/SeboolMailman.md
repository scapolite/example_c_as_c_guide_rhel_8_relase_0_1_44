---
scapolite:
    class: rule
    version: '0.51'
id: sebool_mailman_use_fusefs
id_namespace: org.ssgproject.RHEL-8
title: Disable the mailman\_use\_fusefs SELinux Boolean
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
        idref: ocil:ssg-sebool_mailman_use_fusefs_ocil:questionnaire:1
        href: sebool_mailman_use_fusefs.ocil.xml
---


## /rule

Disable the mailman\_use\_fusefs SELinux Boolean

## /description

By
default, the SELinux boolean `mailman_use_fusefs` is disabled. If this
setting is enabled, it should be disabled. To disable the
`mailman_use_fusefs` SELinux boolean, run the following command:

``` 
$ sudo setsebool -P mailman_use_fusefs off
```
