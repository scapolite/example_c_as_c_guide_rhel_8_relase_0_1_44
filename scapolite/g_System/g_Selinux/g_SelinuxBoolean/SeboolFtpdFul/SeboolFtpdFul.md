---
scapolite:
    class: rule
    version: '0.51'
id: sebool_ftpd_full_access
id_namespace: org.ssgproject.RHEL-8
title: Disable the ftpd\_full\_access SELinux Boolean
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
        idref: ocil:ssg-sebool_ftpd_full_access_ocil:questionnaire:1
        href: sebool_ftpd_full_access.ocil.xml
---


## /rule

Disable the ftpd\_full\_access SELinux Boolean

## /description

By
default, the SELinux boolean `ftpd_full_access` is disabled. If this
setting is enabled, it should be disabled. To disable the
`ftpd_full_access` SELinux boolean, run the following command:

``` 
$ sudo setsebool -P ftpd_full_access off
```
