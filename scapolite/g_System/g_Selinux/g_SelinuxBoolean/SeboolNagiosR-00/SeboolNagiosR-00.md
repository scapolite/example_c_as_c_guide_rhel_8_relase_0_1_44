---
scapolite:
    class: rule
    version: '0.51'
id: sebool_nagios_run_pnp4nagios
id_namespace: org.ssgproject.RHEL-8
title: Disable the nagios\_run\_pnp4nagios SELinux Boolean
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
        idref: ocil:ssg-sebool_nagios_run_pnp4nagios_ocil:questionnaire:1
        href: sebool_nagios_run_pnp4nagios.ocil.xml
---


## /rule

Disable the nagios\_run\_pnp4nagios SELinux Boolean

## /description

By
default, the SELinux boolean `nagios_run_pnp4nagios` is disabled. If
this setting is enabled, it should be disabled. To disable the
`nagios_run_pnp4nagios` SELinux boolean, run the following command:

``` 
$ sudo setsebool -P nagios_run_pnp4nagios off
```
