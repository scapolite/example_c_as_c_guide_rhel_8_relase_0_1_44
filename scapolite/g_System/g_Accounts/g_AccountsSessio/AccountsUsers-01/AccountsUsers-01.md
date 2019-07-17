---
scapolite:
    class: rule
    version: '0.51'
id: accounts_users_home_files_groupownership
id_namespace: org.ssgproject.RHEL-8
title: |
    All User Files and Directories In The Home Directory Must Be Group-Owned
    By The Primary User
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
        idref: ocil:ssg-accounts_users_home_files_groupownership_ocil:questionnaire:1
        href: accounts_users_home_files_groupownership.ocil.xml
crossrefs:
  - system: http://iase.disa.mil/stigs/cci/Pages/index.aspx
    idref: CCI-000366
    relation: ''
  - system: http://iase.disa.mil/stigs/os/general/Pages/index.aspx
    idref: SRG-OS-000480-GPOS-00227
    relation: ''
  - system: http://iase.disa.mil/stigs/os/unix-linux/Pages/index.aspx
    idref: RHEL-08-020670
    relation: ''
---


## /rule

All User Files and Directories In The Home Directory Must Be Group-Owned
By The Primary User

## /rationale

If
a local interactive users files are group-owned by a group of which the
user is not a member, unintended users may be able to access them.

## /description

Change
the group of a local interactive users files and directories to a group
that the interactive user is a member of. To change the group owner of a
local interactive users files and directories, use the following
command:

``` 
$ sudo chgrp USER_GROUP /home/USER/FILE_DIR
```
