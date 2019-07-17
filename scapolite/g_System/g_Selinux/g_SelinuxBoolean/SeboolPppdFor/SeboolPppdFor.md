---
scapolite:
    class: rule
    version: '0.51'
id: sebool_pppd_for_user
id_namespace: org.ssgproject.RHEL-8
title: Disable the pppd\_for\_user SELinux Boolean
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
        idref: ocil:ssg-sebool_pppd_for_user_ocil:questionnaire:1
        href: sebool_pppd_for_user.ocil.xml
---


## /rule

Disable the pppd\_for\_user SELinux Boolean

## /description

By
default, the SELinux boolean `pppd_for_user` is disabled. If this
setting is enabled, it should be disabled. To disable the
`pppd_for_user` SELinux boolean, run the following command:

``` 
$ sudo setsebool -P pppd_for_user off
```
