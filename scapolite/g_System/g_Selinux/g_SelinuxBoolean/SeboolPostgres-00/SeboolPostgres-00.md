---
scapolite:
    class: rule
    version: '0.51'
id: sebool_postgresql_selinux_users_ddl
id_namespace: org.ssgproject.RHEL-8
title: Enable the postgresql\_selinux\_users\_ddl SELinux Boolean
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
        idref: ocil:ssg-sebool_postgresql_selinux_users_ddl_ocil:questionnaire:1
        href: sebool_postgresql_selinux_users_ddl.ocil.xml
---


## /rule

Enable the postgresql\_selinux\_users\_ddl SELinux Boolean

## /description

By
default, the SELinux boolean `postgresql_selinux_users_ddl` is enabled.
If this setting is disabled, it should be enabled as it allows Database
Administrators to execute Data Definition Language (DDL) statements. To
enable the `postgresql_selinux_users_ddl` SELinux boolean, run the
following command:

``` 
$ sudo setsebool -P postgresql_selinux_users_ddl on
```
