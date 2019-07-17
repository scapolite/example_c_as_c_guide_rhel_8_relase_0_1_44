---
scapolite:
    class: rule
    version: '0.51'
id: sebool_logging_syslogd_use_tty
id_namespace: org.ssgproject.RHEL-8
title: Enable the logging\_syslogd\_use\_tty SELinux Boolean
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
        idref: ocil:ssg-sebool_logging_syslogd_use_tty_ocil:questionnaire:1
        href: sebool_logging_syslogd_use_tty.ocil.xml
---


## /rule

Enable the logging\_syslogd\_use\_tty SELinux Boolean

## /description

By
default, the SELinux boolean `logging_syslogd_use_tty` is enabled. If
this setting is disabled, it should be enabled as it allows `syslog` the
ability to read/write to terminal. To enable the
`logging_syslogd_use_tty` SELinux boolean, run the following command:

``` 
$ sudo setsebool -P logging_syslogd_use_tty on
```
