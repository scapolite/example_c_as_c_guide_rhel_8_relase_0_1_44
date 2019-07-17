---
scapolite:
    class: rule
    version: '0.51'
id: sebool_pcp_read_generic_logs
id_namespace: org.ssgproject.RHEL-8
title: Disable the pcp\_read\_generic\_logs SELinux Boolean
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
        idref: ocil:ssg-sebool_pcp_read_generic_logs_ocil:questionnaire:1
        href: sebool_pcp_read_generic_logs.ocil.xml
---


## /rule

Disable the pcp\_read\_generic\_logs SELinux Boolean

## /description

By
default, the SELinux boolean `pcp_read_generic_logs` is disabled. If
this setting is enabled, it should be disabled. To disable the
`pcp_read_generic_logs` SELinux boolean, run the following command:

``` 
$ sudo setsebool -P pcp_read_generic_logs off
```
