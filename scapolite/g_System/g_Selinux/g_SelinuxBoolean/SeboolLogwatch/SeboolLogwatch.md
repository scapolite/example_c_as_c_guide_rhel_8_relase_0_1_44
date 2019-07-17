---
scapolite:
    class: rule
    version: '0.51'
id: sebool_logwatch_can_network_connect_mail
id_namespace: org.ssgproject.RHEL-8
title: Disable the logwatch\_can\_network\_connect\_mail SELinux Boolean
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
        idref: ocil:ssg-sebool_logwatch_can_network_connect_mail_ocil:questionnaire:1
        href: sebool_logwatch_can_network_connect_mail.ocil.xml
---


## /rule

Disable the logwatch\_can\_network\_connect\_mail SELinux Boolean

## /description

By
default, the SELinux boolean `logwatch_can_network_connect_mail` is
disabled. If this setting is enabled, it should be disabled. To disable
the `logwatch_can_network_connect_mail` SELinux boolean, run the
following command:

``` 
$ sudo setsebool -P logwatch_can_network_connect_mail off
```
