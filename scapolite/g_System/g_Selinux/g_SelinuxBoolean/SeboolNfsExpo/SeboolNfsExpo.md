---
scapolite:
    class: rule
    version: '0.51'
id: sebool_nfs_export_all_ro
id_namespace: org.ssgproject.RHEL-8
title: Enable the nfs\_export\_all\_ro SELinux Boolean
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
        idref: ocil:ssg-sebool_nfs_export_all_ro_ocil:questionnaire:1
        href: sebool_nfs_export_all_ro.ocil.xml
---


## /rule

Enable the nfs\_export\_all\_ro SELinux Boolean

## /description

By
default, the SELinux boolean `nfs_export_all_ro` is enabled. If this
setting is disabled, it should be enabled as it allows NFS to export
read-only mounts. To enable the `nfs_export_all_ro` SELinux boolean, run
the following command:

``` 
$ sudo setsebool -P nfs_export_all_ro on
```
