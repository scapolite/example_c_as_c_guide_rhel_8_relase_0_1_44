---
scapolite:
    class: rule
    version: '0.51'
id: sebool_postfix_local_write_mail_spool
id_namespace: org.ssgproject.RHEL-8
title: Enable the postfix\_local\_write\_mail\_spool SELinux Boolean
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
        idref: ocil:ssg-sebool_postfix_local_write_mail_spool_ocil:questionnaire:1
        href: sebool_postfix_local_write_mail_spool.ocil.xml
---


## /rule

Enable the postfix\_local\_write\_mail\_spool SELinux Boolean

## /description

By
default, the SELinux boolean `postfix_local_write_mail_spool` is
enabled. If this setting is disabled, it should be enabled as it allows
Postfix to write to the mail spool directories. To enable the
`postfix_local_write_mail_spool` SELinux boolean, run the following
command:

``` 
$ sudo setsebool -P postfix_local_write_mail_spool on
```
