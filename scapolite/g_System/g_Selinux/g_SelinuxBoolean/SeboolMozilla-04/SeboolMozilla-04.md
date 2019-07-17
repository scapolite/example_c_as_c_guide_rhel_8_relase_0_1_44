---
scapolite:
    class: rule
    version: '0.51'
id: sebool_mozilla_read_content
id_namespace: org.ssgproject.RHEL-8
title: Disable the mozilla\_read\_content SELinux Boolean
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
        idref: ocil:ssg-sebool_mozilla_read_content_ocil:questionnaire:1
        href: sebool_mozilla_read_content.ocil.xml
---


## /rule

Disable the mozilla\_read\_content SELinux Boolean

## /description

By
default, the SELinux boolean `mozilla_read_content` is disabled. If this
setting is enabled, it should be disabled. To disable the
`mozilla_read_content` SELinux boolean, run the following command:

``` 
$ sudo setsebool -P mozilla_read_content off
```
