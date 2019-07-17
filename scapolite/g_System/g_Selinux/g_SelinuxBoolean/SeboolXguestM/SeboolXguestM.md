---
scapolite:
    class: rule
    version: '0.51'
id: sebool_xguest_mount_media
id_namespace: org.ssgproject.RHEL-8
title: Disable the xguest\_mount\_media SELinux Boolean
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
        idref: ocil:ssg-sebool_xguest_mount_media_ocil:questionnaire:1
        href: sebool_xguest_mount_media.ocil.xml
---


## /rule

Disable the xguest\_mount\_media SELinux Boolean

## /description

By
default, the SELinux boolean `xguest_mount_media` is enabled. This
setting should be disabled as guest users should not be able to mount
any media. To disable the `xguest_mount_media` SELinux boolean, run the
following command:

``` 
$ sudo setsebool -P xguest_mount_media off
```
