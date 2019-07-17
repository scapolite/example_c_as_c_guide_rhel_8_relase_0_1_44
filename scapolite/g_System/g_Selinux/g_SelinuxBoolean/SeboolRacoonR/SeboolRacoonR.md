---
scapolite:
    class: rule
    version: '0.51'
id: sebool_racoon_read_shadow
id_namespace: org.ssgproject.RHEL-8
title: Disable the racoon\_read\_shadow SELinux Boolean
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
        idref: ocil:ssg-sebool_racoon_read_shadow_ocil:questionnaire:1
        href: sebool_racoon_read_shadow.ocil.xml
---


## /rule

Disable the racoon\_read\_shadow SELinux Boolean

## /description

By
default, the SELinux boolean `racoon_read_shadow` is disabled. If this
setting is enabled, it should be disabled. To disable the
`racoon_read_shadow` SELinux boolean, run the following command:

``` 
$ sudo setsebool -P racoon_read_shadow off
```
