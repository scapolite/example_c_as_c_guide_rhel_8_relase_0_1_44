---
scapolite:
    class: rule
    version: '0.51'
id: sebool_samba_domain_controller
id_namespace: org.ssgproject.RHEL-8
title: Disable the samba\_domain\_controller SELinux Boolean
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
        idref: ocil:ssg-sebool_samba_domain_controller_ocil:questionnaire:1
        href: sebool_samba_domain_controller.ocil.xml
---


## /rule

Disable the samba\_domain\_controller SELinux Boolean

## /description

By
default, the SELinux boolean `samba_domain_controller` is disabled. If
this setting is enabled, it should be disabled. To disable the
`samba_domain_controller` SELinux boolean, run the following command:

``` 
$ sudo setsebool -P samba_domain_controller off
```
