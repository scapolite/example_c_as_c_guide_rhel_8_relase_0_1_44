---
scapolite:
    class: rule
    version: '0.51'
id: sebool_gluster_export_all_rw
id_namespace: org.ssgproject.RHEL-8
title: Configure the gluster\_export\_all\_rw SELinux Boolean
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
        idref: ocil:ssg-sebool_gluster_export_all_rw_ocil:questionnaire:1
        href: sebool_gluster_export_all_rw.ocil.xml
---


## /rule

Configure the gluster\_export\_all\_rw SELinux Boolean

## /description

By
default, the SELinux boolean `gluster_export_all_rw` is enabled. If
`GlusterFS` is in use, this setting should be enabled. Otherwise,
disable it. To disable the `gluster_export_all_rw` SELinux boolean, run
the following command:

``` 
$ sudo setsebool -P gluster_export_all_rw off
```
