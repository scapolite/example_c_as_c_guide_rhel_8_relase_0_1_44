---
scapolite:
    class: rule
    version: '0.51'
id: sebool_squid_use_tproxy
id_namespace: org.ssgproject.RHEL-8
title: Disable the squid\_use\_tproxy SELinux Boolean
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
        idref: ocil:ssg-sebool_squid_use_tproxy_ocil:questionnaire:1
        href: sebool_squid_use_tproxy.ocil.xml
---


## /rule

Disable the squid\_use\_tproxy SELinux Boolean

## /description

By
default, the SELinux boolean `squid_use_tproxy` is disabled. If this
setting is enabled, it should be disabled. To disable the
`squid_use_tproxy` SELinux boolean, run the following command:

``` 
$ sudo setsebool -P squid_use_tproxy off
```
