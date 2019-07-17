---
scapolite:
    class: rule
    version: '0.51'
id: sebool_mock_enable_homedirs
id_namespace: org.ssgproject.RHEL-8
title: Disable the mock\_enable\_homedirs SELinux Boolean
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
        idref: ocil:ssg-sebool_mock_enable_homedirs_ocil:questionnaire:1
        href: sebool_mock_enable_homedirs.ocil.xml
---


## /rule

Disable the mock\_enable\_homedirs SELinux Boolean

## /description

By
default, the SELinux boolean `mock_enable_homedirs` is disabled. If this
setting is enabled, it should be disabled. To disable the
`mock_enable_homedirs` SELinux boolean, run the following command:

``` 
$ sudo setsebool -P mock_enable_homedirs off
```
