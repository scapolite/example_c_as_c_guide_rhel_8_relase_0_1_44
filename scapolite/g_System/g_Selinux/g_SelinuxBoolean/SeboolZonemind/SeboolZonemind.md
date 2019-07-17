---
scapolite:
    class: rule
    version: '0.51'
id: sebool_zoneminder_run_sudo
id_namespace: org.ssgproject.RHEL-8
title: Disable the zoneminder\_run\_sudo SELinux Boolean
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
        idref: ocil:ssg-sebool_zoneminder_run_sudo_ocil:questionnaire:1
        href: sebool_zoneminder_run_sudo.ocil.xml
---


## /rule

Disable the zoneminder\_run\_sudo SELinux Boolean

## /description

By
default, the SELinux boolean `zoneminder_run_sudo` is disabled. If this
setting is enabled, it should be disabled. To disable the
`zoneminder_run_sudo` SELinux boolean, run the following command:

``` 
$ sudo setsebool -P zoneminder_run_sudo off
```
