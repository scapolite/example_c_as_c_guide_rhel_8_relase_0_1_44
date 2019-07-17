---
scapolite:
    class: rule
    version: '0.51'
id: sebool_openvpn_can_network_connect
id_namespace: org.ssgproject.RHEL-8
title: Disable the openvpn\_can\_network\_connect SELinux Boolean
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
        idref: ocil:ssg-sebool_openvpn_can_network_connect_ocil:questionnaire:1
        href: sebool_openvpn_can_network_connect.ocil.xml
---


## /rule

Disable the openvpn\_can\_network\_connect SELinux Boolean

## /description

By
default, the SELinux boolean `openvpn_can_network_connect` is enabled.
This setting should be disabled. To disable the
`openvpn_can_network_connect` SELinux boolean, run the following
command:

``` 
$ sudo setsebool -P openvpn_can_network_connect off
```
