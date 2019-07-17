---
scapolite:
    class: rule
    version: '0.51'
id: sebool_sysadm_exec_content
id_namespace: org.ssgproject.RHEL-8
title: Enable the sysadm\_exec\_content SELinux Boolean
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
        idref: ocil:ssg-sebool_sysadm_exec_content_ocil:questionnaire:1
        href: sebool_sysadm_exec_content.ocil.xml
---


## /rule

Enable the sysadm\_exec\_content SELinux Boolean

## /description

By
default, the SELinux boolean `sysadm_exec_content` is enabled. If this
setting is disabled, it should be enabled. To enable the
`sysadm_exec_content` SELinux boolean, run the following command:

``` 
$ sudo setsebool -P sysadm_exec_content on
```
