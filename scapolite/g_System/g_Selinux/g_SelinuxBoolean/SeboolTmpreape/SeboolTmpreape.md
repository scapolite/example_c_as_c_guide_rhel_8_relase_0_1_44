---
scapolite:
    class: rule
    version: '0.51'
id: sebool_tmpreaper_use_nfs
id_namespace: org.ssgproject.RHEL-8
title: Disable the tmpreaper\_use\_nfs SELinux Boolean
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
        idref: ocil:ssg-sebool_tmpreaper_use_nfs_ocil:questionnaire:1
        href: sebool_tmpreaper_use_nfs.ocil.xml
---


## /rule

Disable the tmpreaper\_use\_nfs SELinux Boolean

## /description

By
default, the SELinux boolean `tmpreaper_use_nfs` is disabled. If this
setting is enabled, it should be disabled. To disable the
`tmpreaper_use_nfs` SELinux boolean, run the following command:

``` 
$ sudo setsebool -P tmpreaper_use_nfs off
```
