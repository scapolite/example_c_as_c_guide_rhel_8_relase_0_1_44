---
scapolite:
    class: rule
    version: '0.51'
id: sebool_mcelog_exec_scripts
id_namespace: org.ssgproject.RHEL-8
title: Enable the mcelog\_exec\_scripts SELinux Boolean
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
        idref: ocil:ssg-sebool_mcelog_exec_scripts_ocil:questionnaire:1
        href: sebool_mcelog_exec_scripts.ocil.xml
---


## /rule

Enable the mcelog\_exec\_scripts SELinux Boolean

## /description

By
default, the SELinux boolean `mcelog_exec_scripts` is enabled. If this
setting is disabled, it should be enabled. To enable the
`mcelog_exec_scripts` SELinux boolean, run the following command:

``` 
$ sudo setsebool -P mcelog_exec_scripts on
```
