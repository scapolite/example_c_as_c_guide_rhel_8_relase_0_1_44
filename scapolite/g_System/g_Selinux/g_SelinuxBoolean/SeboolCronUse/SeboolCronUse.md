---
scapolite:
    class: rule
    version: '0.51'
id: sebool_cron_userdomain_transition
id_namespace: org.ssgproject.RHEL-8
title: Enable the cron\_userdomain\_transition SELinux Boolean
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
        idref: ocil:ssg-sebool_cron_userdomain_transition_ocil:questionnaire:1
        href: sebool_cron_userdomain_transition.ocil.xml
---


## /rule

Enable the cron\_userdomain\_transition SELinux Boolean

## /description

By
default, the SELinux boolean `cron_userdomain_transition` is enabled.
This setting should be enabled as end user cron jobs run in their
default associated user domain(s) instead of the general cronjob domain.
To enable the `cron_userdomain_transition` SELinux boolean, run the
following command:

``` 
$ sudo setsebool -P cron_userdomain_transition on
```
