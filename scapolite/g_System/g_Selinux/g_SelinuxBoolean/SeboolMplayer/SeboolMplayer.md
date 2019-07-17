---
scapolite:
    class: rule
    version: '0.51'
id: sebool_mplayer_execstack
id_namespace: org.ssgproject.RHEL-8
title: Disable the mplayer\_execstack SELinux Boolean
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
        idref: ocil:ssg-sebool_mplayer_execstack_ocil:questionnaire:1
        href: sebool_mplayer_execstack.ocil.xml
---


## /rule

Disable the mplayer\_execstack SELinux Boolean

## /description

By
default, the SELinux boolean `mplayer_execstack` is disabled. If this
setting is enabled, it should be disabled. To disable the
`mplayer_execstack` SELinux boolean, run the following command:

``` 
$ sudo setsebool -P mplayer_execstack off
```
