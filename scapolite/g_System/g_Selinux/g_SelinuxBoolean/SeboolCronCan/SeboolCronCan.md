---
scapolite:
    class: rule
    version: '0.51'
id: sebool_cron_can_relabel
id_namespace: org.ssgproject.RHEL-8
title: Disable the cron\_can\_relabel SELinux Boolean
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
        idref: ocil:ssg-sebool_cron_can_relabel_ocil:questionnaire:1
        href: sebool_cron_can_relabel.ocil.xml
---


## /rule

Disable the cron\_can\_relabel SELinux Boolean

## /description

By
default, the SELinux boolean `cron_can_relabel` is disabled. If this
setting is enabled, it should be disabled. To disable the
`cron_can_relabel` SELinux boolean, run the following command:

``` 
$ sudo setsebool -P cron_can_relabel off
```
