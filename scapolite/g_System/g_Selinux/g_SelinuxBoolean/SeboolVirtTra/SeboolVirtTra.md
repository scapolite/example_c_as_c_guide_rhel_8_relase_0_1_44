---
scapolite:
    class: rule
    version: '0.51'
id: sebool_virt_transition_userdomain
id_namespace: org.ssgproject.RHEL-8
title: Disable the virt\_transition\_userdomain SELinux Boolean
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
        idref: ocil:ssg-sebool_virt_transition_userdomain_ocil:questionnaire:1
        href: sebool_virt_transition_userdomain.ocil.xml
---


## /rule

Disable the virt\_transition\_userdomain SELinux Boolean

## /description

By
default, the SELinux boolean `virt_transition_userdomain` is disabled.
If this setting is enabled, it should be disabled. To disable the
`virt_transition_userdomain` SELinux boolean, run the following command:

``` 
$ sudo setsebool -P virt_transition_userdomain off
```
