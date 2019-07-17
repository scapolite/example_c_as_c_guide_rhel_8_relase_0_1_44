---
scapolite:
    class: rule
    version: '0.51'
id: sebool_mcelog_server
id_namespace: org.ssgproject.RHEL-8
title: Disable the mcelog\_server SELinux Boolean
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
        idref: ocil:ssg-sebool_mcelog_server_ocil:questionnaire:1
        href: sebool_mcelog_server.ocil.xml
---


## /rule

Disable the mcelog\_server SELinux Boolean

## /description

By
default, the SELinux boolean `mcelog_server` is disabled. If this
setting is enabled, it should be disabled. To disable the
`mcelog_server` SELinux boolean, run the following command:

``` 
$ sudo setsebool -P mcelog_server off
```
