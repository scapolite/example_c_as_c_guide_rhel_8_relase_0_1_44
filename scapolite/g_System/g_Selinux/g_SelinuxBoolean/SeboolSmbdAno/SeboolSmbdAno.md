---
scapolite:
    class: rule
    version: '0.51'
id: sebool_smbd_anon_write
id_namespace: org.ssgproject.RHEL-8
title: Disable the smbd\_anon\_write SELinux Boolean
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
        idref: ocil:ssg-sebool_smbd_anon_write_ocil:questionnaire:1
        href: sebool_smbd_anon_write.ocil.xml
---


## /rule

Disable the smbd\_anon\_write SELinux Boolean

## /description

By
default, the SELinux boolean `smbd_anon_write` is disabled. If this
setting is enabled, it should be disabled. To disable the
`smbd_anon_write` SELinux boolean, run the following command:

``` 
$ sudo setsebool -P smbd_anon_write off
```
