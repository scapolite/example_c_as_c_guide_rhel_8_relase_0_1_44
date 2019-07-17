---
scapolite:
    class: rule
    version: '0.51'
id: sebool_virt_sandbox_use_all_caps
id_namespace: org.ssgproject.RHEL-8
title: Disable the virt\_sandbox\_use\_all\_caps SELinux Boolean
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
        idref: ocil:ssg-sebool_virt_sandbox_use_all_caps_ocil:questionnaire:1
        href: sebool_virt_sandbox_use_all_caps.ocil.xml
---


## /rule

Disable the virt\_sandbox\_use\_all\_caps SELinux Boolean

## /description

By
default, the SELinux boolean `virt_sandbox_use_all_caps` is enabled.
This setting is disabled as containers should not run with privileges.
To disable the `virt_sandbox_use_all_caps` SELinux boolean, run the
following command:

``` 
$ sudo setsebool -P virt_sandbox_use_all_caps off
```
