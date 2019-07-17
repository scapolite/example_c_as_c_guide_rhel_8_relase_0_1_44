---
scapolite:
    class: rule
    version: '0.51'
id: file_ownership_home_directories
id_namespace: org.ssgproject.RHEL-8
title: All Interactive User Home Directories Must Be Owned By The Primary User
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
        idref: ocil:ssg-file_ownership_home_directories_ocil:questionnaire:1
        href: file_ownership_home_directories.ocil.xml
crossrefs:
  - system: http://iase.disa.mil/stigs/cci/Pages/index.aspx
    idref: CCI-000366
    relation: ''
  - system: http://iase.disa.mil/stigs/os/general/Pages/index.aspx
    idref: SRG-OS-000480-GPOS-00227
    relation: ''
  - system: http://iase.disa.mil/stigs/os/unix-linux/Pages/index.aspx
    idref: RHEL-08-020640
    relation: ''
---


## /rule

All Interactive User Home Directories Must Be Owned By The Primary User

## /rationale

If
a local interactive user does not own their home directory, unauthorized
users could access or modify the user\'s files, and the users may not be
able to access their own files.

## /description

Change
the owner of interactive users home directories to that correct owner.
To change the owner of a interactive users home directory, use the
following command:

``` 
$ sudo chown USER /home/USER
```
