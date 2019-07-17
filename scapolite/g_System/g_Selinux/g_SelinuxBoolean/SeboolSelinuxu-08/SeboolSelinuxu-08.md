---
scapolite:
    class: rule
    version: '0.51'
id: sebool_selinuxuser_rw_noexattrfile
id_namespace: org.ssgproject.RHEL-8
title: Disable the selinuxuser\_rw\_noexattrfile SELinux Boolean
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
        idref: ocil:ssg-sebool_selinuxuser_rw_noexattrfile_ocil:questionnaire:1
        href: sebool_selinuxuser_rw_noexattrfile.ocil.xml
---


## /rule

Disable the selinuxuser\_rw\_noexattrfile SELinux Boolean

## /description

By
default, the SELinux boolean `selinuxuser_rw_noexattrfile` is enabled.
This setting should be disabled as users should not be able to
read/write files on filesystems that do not have extended attributes
e.g. FAT, CDROM, FLOPPY, etc. To disable the
`selinuxuser_rw_noexattrfile` SELinux boolean, run the following
command:

``` 
$ sudo setsebool -P selinuxuser_rw_noexattrfile off
```
