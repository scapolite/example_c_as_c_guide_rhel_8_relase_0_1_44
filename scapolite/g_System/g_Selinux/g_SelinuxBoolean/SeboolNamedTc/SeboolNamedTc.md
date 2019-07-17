---
scapolite:
    class: rule
    version: '0.51'
id: sebool_named_tcp_bind_http_port
id_namespace: org.ssgproject.RHEL-8
title: Disable the named\_tcp\_bind\_http\_port SELinux Boolean
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
        idref: ocil:ssg-sebool_named_tcp_bind_http_port_ocil:questionnaire:1
        href: sebool_named_tcp_bind_http_port.ocil.xml
---


## /rule

Disable the named\_tcp\_bind\_http\_port SELinux Boolean

## /description

By
default, the SELinux boolean `named_tcp_bind_http_port` is disabled. If
this setting is enabled, it should be disabled. To disable the
`named_tcp_bind_http_port` SELinux boolean, run the following command:

``` 
$ sudo setsebool -P named_tcp_bind_http_port off
```
