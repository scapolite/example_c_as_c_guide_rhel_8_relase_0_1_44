---
scapolite:
    class: rule
    version: '0.51'
id: sebool_spamd_enable_home_dirs
id_namespace: org.ssgproject.RHEL-8
title: Enable the spamd\_enable\_home\_dirs SELinux Boolean
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
        idref: ocil:ssg-sebool_spamd_enable_home_dirs_ocil:questionnaire:1
        href: sebool_spamd_enable_home_dirs.ocil.xml
---


## /rule

Enable the spamd\_enable\_home\_dirs SELinux Boolean

## /description

By
default, the SELinux boolean `spamd_enable_home_dirs` is enabled. If
this setting is disabled, it should be enabled. To enable the
`spamd_enable_home_dirs` SELinux boolean, run the following command:

``` 
$ sudo setsebool -P spamd_enable_home_dirs on
```
