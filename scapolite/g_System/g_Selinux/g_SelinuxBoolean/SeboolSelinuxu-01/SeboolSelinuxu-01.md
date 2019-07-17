---
scapolite:
    class: rule
    version: '0.51'
id: sebool_selinuxuser_postgresql_connect_enabled
id_namespace: org.ssgproject.RHEL-8
title: Disable the selinuxuser\_postgresql\_connect\_enabled SELinux Boolean
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
        idref: ocil:ssg-sebool_selinuxuser_postgresql_connect_enabled_ocil:questionnaire:1
        href: sebool_selinuxuser_postgresql_connect_enabled.ocil.xml
---


## /rule

Disable the selinuxuser\_postgresql\_connect\_enabled SELinux Boolean

## /description

By
default, the SELinux boolean `selinuxuser_postgresql_connect_enabled` is
disabled. If this setting is enabled, it should be disabled. To disable
the `selinuxuser_postgresql_connect_enabled` SELinux boolean, run the
following command:

``` 
$ sudo setsebool -P selinuxuser_postgresql_connect_enabled off
```
