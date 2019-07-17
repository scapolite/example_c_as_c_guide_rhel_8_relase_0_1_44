---
scapolite:
    class: rule
    version: '0.51'
id: sebool_privoxy_connect_any
id_namespace: org.ssgproject.RHEL-8
title: Disable the privoxy\_connect\_any SELinux Boolean
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
        idref: ocil:ssg-sebool_privoxy_connect_any_ocil:questionnaire:1
        href: sebool_privoxy_connect_any.ocil.xml
---


## /rule

Disable the privoxy\_connect\_any SELinux Boolean

## /description

By
default, the SELinux boolean `privoxy_connect_any` is enabled. This
setting should be disabled. To disable the `privoxy_connect_any` SELinux
boolean, run the following command:

``` 
$ sudo setsebool -P privoxy_connect_any off
```
