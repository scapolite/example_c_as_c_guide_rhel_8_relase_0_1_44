---
scapolite:
    class: rule
    version: '0.51'
id: sebool_mount_anyfile
id_namespace: org.ssgproject.RHEL-8
title: Enable the mount\_anyfile SELinux Boolean
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
        idref: ocil:ssg-sebool_mount_anyfile_ocil:questionnaire:1
        href: sebool_mount_anyfile.ocil.xml
---


## /rule

Enable the mount\_anyfile SELinux Boolean

## /description

By
default, the SELinux boolean `mount_anyfile` is enabled. If this setting
is disabled, it should be enabled to allow any file or directory to be
mounted. To enable the `mount_anyfile` SELinux boolean, run the
following command:

``` 
$ sudo setsebool -P mount_anyfile on
```
