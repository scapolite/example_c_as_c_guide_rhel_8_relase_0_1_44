---
scapolite:
    class: rule
    version: '0.51'
id: sebool_httpd_can_network_relay
id_namespace: org.ssgproject.RHEL-8
title: Disable the httpd\_can\_network\_relay SELinux Boolean
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
        idref: ocil:ssg-sebool_httpd_can_network_relay_ocil:questionnaire:1
        href: sebool_httpd_can_network_relay.ocil.xml
---


## /rule

Disable the httpd\_can\_network\_relay SELinux Boolean

## /description

By
default, the SELinux boolean `httpd_can_network_relay` is disabled. If
this setting is enabled, it should be disabled. To disable the
`httpd_can_network_relay` SELinux boolean, run the following command:

``` 
$ sudo setsebool -P httpd_can_network_relay off
```