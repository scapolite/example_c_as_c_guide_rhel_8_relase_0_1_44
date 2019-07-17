---
scapolite:
    class: rule
    version: '0.51'
id: sebool_irssi_use_full_network
id_namespace: org.ssgproject.RHEL-8
title: Disable the irssi\_use\_full\_network SELinux Boolean
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
        idref: ocil:ssg-sebool_irssi_use_full_network_ocil:questionnaire:1
        href: sebool_irssi_use_full_network.ocil.xml
---


## /rule

Disable the irssi\_use\_full\_network SELinux Boolean

## /description

By
default, the SELinux boolean `irssi_use_full_network` is disabled. If
this setting is enabled, it should be disabled. To disable the
`irssi_use_full_network` SELinux boolean, run the following command:

``` 
$ sudo setsebool -P irssi_use_full_network off
```
