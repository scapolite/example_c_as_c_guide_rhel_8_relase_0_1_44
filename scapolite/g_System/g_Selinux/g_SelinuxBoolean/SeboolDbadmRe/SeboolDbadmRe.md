---
scapolite:
    class: rule
    version: '0.51'
id: sebool_dbadm_read_user_files
id_namespace: org.ssgproject.RHEL-8
title: Disable the dbadm\_read\_user\_files SELinux Boolean
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
        idref: ocil:ssg-sebool_dbadm_read_user_files_ocil:questionnaire:1
        href: sebool_dbadm_read_user_files.ocil.xml
---


## /rule

Disable the dbadm\_read\_user\_files SELinux Boolean

## /description

By
default, the SELinux boolean `dbadm_read_user_files` is disabled. If
this setting is enabled, it should be disabled. To disable the
`dbadm_read_user_files` SELinux boolean, run the following command:

``` 
$ sudo setsebool -P dbadm_read_user_files off
```
