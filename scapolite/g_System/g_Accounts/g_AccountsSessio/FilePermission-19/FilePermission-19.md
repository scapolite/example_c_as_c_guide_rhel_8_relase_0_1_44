---
scapolite:
    class: rule
    version: '0.51'
id: file_permissions_home_directories
id_namespace: org.ssgproject.RHEL-8
title: |
    All Interactive User Home Directories Must Have mode 0750 Or Less
    Permissive
rule: <see below>
rationale: <see below>
description: <see below>
applicability:
  - system: org.scapolite.xccdf.applicability
    severity: medium
checks:
  - relative_id: '01'
    automations:
      - system: http://scap.nist.gov/schema/ocil/2
        idref: ocil:ssg-file_permissions_home_directories_ocil:questionnaire:1
        href: file_permissions_home_directories.ocil.xml
crossrefs:
  - system: http://iase.disa.mil/stigs/cci/Pages/index.aspx
    idref: CCI-000366
    relation: ''
  - system: http://iase.disa.mil/stigs/os/general/Pages/index.aspx
    idref: SRG-OS-000480-GPOS-00227
    relation: ''
  - system: http://iase.disa.mil/stigs/os/unix-linux/Pages/index.aspx
    idref: RHEL-08-020630
    relation: ''
---


## /rule

All Interactive User Home Directories Must Have mode 0750 Or Less
Permissive

## /rationale

Excessive
permissions on local interactive user home directories may allow
unauthorized access to user files by other users.

## /description

Change
the mode of interactive users home directories to `0750`. To change the
mode of interactive users home directory, use the following command:

``` 
$ sudo chmod 0750 /home/USER
```
