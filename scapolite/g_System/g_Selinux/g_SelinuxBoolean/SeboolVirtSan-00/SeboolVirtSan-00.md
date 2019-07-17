---
scapolite:
    class: rule
    version: '0.51'
id: sebool_virt_sandbox_use_audit
id_namespace: org.ssgproject.RHEL-8
title: Enable the virt\_sandbox\_use\_audit SELinux Boolean
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
        idref: ocil:ssg-sebool_virt_sandbox_use_audit_ocil:questionnaire:1
        href: sebool_virt_sandbox_use_audit.ocil.xml
---


## /rule

Enable the virt\_sandbox\_use\_audit SELinux Boolean

## /description

By
default, the SELinux boolean `virt_sandbox_use_audit` is enabled. If
this setting is disabled, it should be enabled to allow sandboxed
containers to send audit messages. To enable the
`virt_sandbox_use_audit` SELinux boolean, run the following command:

``` 
$ sudo setsebool -P virt_sandbox_use_audit on
```
