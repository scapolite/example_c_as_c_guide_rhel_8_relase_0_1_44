---
scapolite:
    class: rule
    version: '0.51'
id: accounts_users_home_files_ownership
id_namespace: org.ssgproject.RHEL-8
title: |
    All User Files and Directories In The Home Directory Must Be Owned By
    The Primary User
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
        idref: ocil:ssg-accounts_users_home_files_ownership_ocil:questionnaire:1
        href: accounts_users_home_files_ownership.ocil.xml
crossrefs:
  - system: http://iase.disa.mil/stigs/cci/Pages/index.aspx
    idref: CCI-000366
    relation: ''
  - system: http://iase.disa.mil/stigs/os/general/Pages/index.aspx
    idref: SRG-OS-000480-GPOS-00227
    relation: ''
  - system: http://iase.disa.mil/stigs/os/unix-linux/Pages/index.aspx
    idref: RHEL-08-020660
    relation: ''
---


## /rule

All User Files and Directories In The Home Directory Must Be Owned By
The Primary User

## /rationale

If
local interactive users do not own the files in their directories,
unauthorized users may be able to access them. Additionally, if files
are not owned by the user, this could be an indication of system
compromise.

## /description

Change
the owner of a interactive users files and directories to that owner. To
change the of a local interactive users files and directories, use the
following command:

``` 
$ sudo chown -R USER /home/USER
```
