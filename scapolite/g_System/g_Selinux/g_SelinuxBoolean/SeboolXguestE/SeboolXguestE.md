---
scapolite:
    class: rule
    version: '0.51'
id: sebool_xguest_exec_content
id_namespace: org.ssgproject.RHEL-8
title: Disable the xguest\_exec\_content SELinux Boolean
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
        idref: ocil:ssg-sebool_xguest_exec_content_ocil:questionnaire:1
        href: sebool_xguest_exec_content.ocil.xml
---


## /rule

Disable the xguest\_exec\_content SELinux Boolean

## /description

By
default, the SELinux boolean `xguest_exec_content` is enabled. This
setting should be disabled as guest users should not be able to run
executables. To disable the `xguest_exec_content` SELinux boolean, run
the following command:

``` 
$ sudo setsebool -P xguest_exec_content off
```
