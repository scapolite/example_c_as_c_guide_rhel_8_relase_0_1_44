---
scapolite:
    class: rule
    version: '0.51'
id: sebool_samba_load_libgfapi
id_namespace: org.ssgproject.RHEL-8
title: Disable the samba\_load\_libgfapi SELinux Boolean
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
        idref: ocil:ssg-sebool_samba_load_libgfapi_ocil:questionnaire:1
        href: sebool_samba_load_libgfapi.ocil.xml
---


## /rule

Disable the samba\_load\_libgfapi SELinux Boolean

## /description

By
default, the SELinux boolean `samba_load_libgfapi` is disabled. If this
setting is enabled, it should be disabled. To disable the
`samba_load_libgfapi` SELinux boolean, run the following command:

``` 
$ sudo setsebool -P samba_load_libgfapi off
```
