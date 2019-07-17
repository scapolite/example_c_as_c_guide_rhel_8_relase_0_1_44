---
scapolite:
    class: rule
    version: '0.51'
id: sebool_postgresql_can_rsync
id_namespace: org.ssgproject.RHEL-8
title: Disable the postgresql\_can\_rsync SELinux Boolean
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
        idref: ocil:ssg-sebool_postgresql_can_rsync_ocil:questionnaire:1
        href: sebool_postgresql_can_rsync.ocil.xml
---


## /rule

Disable the postgresql\_can\_rsync SELinux Boolean

## /description

By
default, the SELinux boolean `postgresql_can_rsync` is disabled. If this
setting is enabled, it should be disabled. To disable the
`postgresql_can_rsync` SELinux boolean, run the following command:

``` 
$ sudo setsebool -P postgresql_can_rsync off
```
