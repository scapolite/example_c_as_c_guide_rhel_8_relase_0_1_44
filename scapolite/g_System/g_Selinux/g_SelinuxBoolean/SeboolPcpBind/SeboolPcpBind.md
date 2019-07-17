---
scapolite:
    class: rule
    version: '0.51'
id: sebool_pcp_bind_all_unreserved_ports
id_namespace: org.ssgproject.RHEL-8
title: Disable the pcp\_bind\_all\_unreserved\_ports SELinux Boolean
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
        idref: ocil:ssg-sebool_pcp_bind_all_unreserved_ports_ocil:questionnaire:1
        href: sebool_pcp_bind_all_unreserved_ports.ocil.xml
---


## /rule

Disable the pcp\_bind\_all\_unreserved\_ports SELinux Boolean

## /description

By
default, the SELinux boolean `pcp_bind_all_unreserved_ports` is
disabled. If this setting is enabled, it should be disabled. To disable
the `pcp_bind_all_unreserved_ports` SELinux boolean, run the following
command:

``` 
$ sudo setsebool -P pcp_bind_all_unreserved_ports off
```
