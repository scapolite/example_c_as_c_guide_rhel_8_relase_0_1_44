---
scapolite:
    class: rule
    version: '0.51'
id: accounts_users_home_files_permissions
id_namespace: org.ssgproject.RHEL-8
title: |
    All User Files and Directories In The Home Directory Must Have Mode 0750
    Or Less Permissive
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
        idref: ocil:ssg-accounts_users_home_files_permissions_ocil:questionnaire:1
        href: accounts_users_home_files_permissions.ocil.xml
crossrefs:
  - system: http://iase.disa.mil/stigs/cci/Pages/index.aspx
    idref: CCI-000366
    relation: ''
  - system: http://iase.disa.mil/stigs/os/general/Pages/index.aspx
    idref: SRG-OS-000480-GPOS-00227
    relation: ''
  - system: http://iase.disa.mil/stigs/os/unix-linux/Pages/index.aspx
    idref: RHEL-08-020680
    relation: ''
---


## /rule

All User Files and Directories In The Home Directory Must Have Mode 0750
Or Less Permissive

## /rationale

If
a local interactive user files have excessive permissions, unintended
users may be able to access or modify them.

## /description

Set
the mode on files and directories in the local interactive user home
directory with the following command:

``` 
$ sudo chmod 0750 /home/USER/FILE_DIR
```
