---
scapolite:
    class: rule
    version: '0.51'
id: sebool_use_fusefs_home_dirs
id_namespace: org.ssgproject.RHEL-8
title: Disable the use\_fusefs\_home\_dirs SELinux Boolean
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
        idref: ocil:ssg-sebool_use_fusefs_home_dirs_ocil:questionnaire:1
        href: sebool_use_fusefs_home_dirs.ocil.xml
---


## /rule

Disable the use\_fusefs\_home\_dirs SELinux Boolean

## /description

By
default, the SELinux boolean `use_fusefs_home_dirs` is disabled. If this
setting is enabled, it should be disabled. To disable the
`use_fusefs_home_dirs` SELinux boolean, run the following command:

``` 
$ sudo setsebool -P use_fusefs_home_dirs off
```
