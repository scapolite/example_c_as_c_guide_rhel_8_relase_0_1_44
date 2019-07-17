---
scapolite:
    class: rule
    version: '0.51'
id: sebool_minidlna_read_generic_user_content
id_namespace: org.ssgproject.RHEL-8
title: Disable the minidlna\_read\_generic\_user\_content SELinux Boolean
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
        idref: ocil:ssg-sebool_minidlna_read_generic_user_content_ocil:questionnaire:1
        href: sebool_minidlna_read_generic_user_content.ocil.xml
---


## /rule

Disable the minidlna\_read\_generic\_user\_content SELinux Boolean

## /description

By
default, the SELinux boolean `minidlna_read_generic_user_content` is
disabled. If this setting is enabled, it should be disabled. To disable
the `minidlna_read_generic_user_content` SELinux boolean, run the
following command:

``` 
$ sudo setsebool -P minidlna_read_generic_user_content off
```
