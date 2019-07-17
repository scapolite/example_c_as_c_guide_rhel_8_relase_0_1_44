---
scapolite:
    class: rule
    version: '0.51'
id: sebool_dhcpc_exec_iptables
id_namespace: org.ssgproject.RHEL-8
title: Disable the dhcpc\_exec\_iptables SELinux Boolean
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
        idref: ocil:ssg-sebool_dhcpc_exec_iptables_ocil:questionnaire:1
        href: sebool_dhcpc_exec_iptables.ocil.xml
---


## /rule

Disable the dhcpc\_exec\_iptables SELinux Boolean

## /description

By
default, the SELinux boolean `dhcpc_exec_iptables` is disabled. If this
setting is enabled, it should be disabled. To disable the
`dhcpc_exec_iptables` SELinux boolean, run the following command:

``` 
$ sudo setsebool -P dhcpc_exec_iptables off
```
