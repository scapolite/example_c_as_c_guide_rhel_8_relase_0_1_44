---
scapolite:
    class: rule
    version: '0.51'
id: sebool_logging_syslogd_run_nagios_plugins
id_namespace: org.ssgproject.RHEL-8
title: Disable the logging\_syslogd\_run\_nagios\_plugins SELinux Boolean
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
        idref: ocil:ssg-sebool_logging_syslogd_run_nagios_plugins_ocil:questionnaire:1
        href: sebool_logging_syslogd_run_nagios_plugins.ocil.xml
---


## /rule

Disable the logging\_syslogd\_run\_nagios\_plugins SELinux Boolean

## /description

By
default, the SELinux boolean `logging_syslogd_run_nagios_plugins` is
disabled. If this setting is enabled, it should be disabled. To disable
the `logging_syslogd_run_nagios_plugins` SELinux boolean, run the
following command:

``` 
$ sudo setsebool -P logging_syslogd_run_nagios_plugins off
```
