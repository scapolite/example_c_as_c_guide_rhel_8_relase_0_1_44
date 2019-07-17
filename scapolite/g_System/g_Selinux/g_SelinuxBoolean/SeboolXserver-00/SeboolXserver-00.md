---
scapolite:
    class: rule
    version: '0.51'
id: sebool_xserver_clients_write_xshm
id_namespace: org.ssgproject.RHEL-8
title: Disable the xserver\_clients\_write\_xshm SELinux Boolean
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
        idref: ocil:ssg-sebool_xserver_clients_write_xshm_ocil:questionnaire:1
        href: sebool_xserver_clients_write_xshm.ocil.xml
---


## /rule

Disable the xserver\_clients\_write\_xshm SELinux Boolean

## /description

By
default, the SELinux boolean `xserver_clients_write_xshm` is disabled.
If this setting is enabled, it should be disabled. To disable the
`xserver_clients_write_xshm` SELinux boolean, run the following command:

``` 
$ sudo setsebool -P xserver_clients_write_xshm off
```
