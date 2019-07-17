---
scapolite:
    class: rule
    version: '0.51'
id: sebool_domain_fd_use
id_namespace: org.ssgproject.RHEL-8
title: Enable the domain\_fd\_use SELinux Boolean
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
        idref: ocil:ssg-sebool_domain_fd_use_ocil:questionnaire:1
        href: sebool_domain_fd_use.ocil.xml
---


## /rule

Enable the domain\_fd\_use SELinux Boolean

## /description

By
default, the SELinux boolean `domain_fd_use` is enabled. If this setting
is disabled, it should be enabled. To enable the `domain_fd_use` SELinux
boolean, run the following command:

``` 
$ sudo setsebool -P domain_fd_use on
```
