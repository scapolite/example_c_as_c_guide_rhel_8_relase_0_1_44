---
scapolite:
    class: rule
    version: '0.51'
id: sebool_logging_syslogd_can_sendmail
id_namespace: org.ssgproject.RHEL-8
title: Disable the logging\_syslogd\_can\_sendmail SELinux Boolean
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
        idref: ocil:ssg-sebool_logging_syslogd_can_sendmail_ocil:questionnaire:1
        href: sebool_logging_syslogd_can_sendmail.ocil.xml
---


## /rule

Disable the logging\_syslogd\_can\_sendmail SELinux Boolean

## /description

By
default, the SELinux boolean `logging_syslogd_can_sendmail` is disabled.
If this setting is enabled, it should be disabled. To disable the
`logging_syslogd_can_sendmail` SELinux boolean, run the following
command:

``` 
$ sudo setsebool -P logging_syslogd_can_sendmail off
```
