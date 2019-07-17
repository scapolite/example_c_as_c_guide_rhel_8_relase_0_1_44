---
scapolite:
    class: rule
    version: '0.51'
id: sebool_domain_kernel_load_modules
id_namespace: org.ssgproject.RHEL-8
title: Disable the domain\_kernel\_load\_modules SELinux Boolean
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
        idref: ocil:ssg-sebool_domain_kernel_load_modules_ocil:questionnaire:1
        href: sebool_domain_kernel_load_modules.ocil.xml
---


## /rule

Disable the domain\_kernel\_load\_modules SELinux Boolean

## /description

By
default, the SELinux boolean `domain_kernel_load_modules` is disabled.
If this setting is enabled, it should be disabled. To disable the
`domain_kernel_load_modules` SELinux boolean, run the following command:

``` 
$ sudo setsebool -P domain_kernel_load_modules off
```
