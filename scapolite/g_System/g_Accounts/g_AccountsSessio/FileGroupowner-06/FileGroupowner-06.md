---
scapolite:
    class: rule
    version: '0.51'
id: file_groupownership_home_directories
id_namespace: org.ssgproject.RHEL-8
title: |
    All Interactive User Home Directories Must Be Group-Owned By The Primary
    User
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
        idref: ocil:ssg-file_groupownership_home_directories_ocil:questionnaire:1
        href: file_groupownership_home_directories.ocil.xml
crossrefs:
  - system: http://iase.disa.mil/stigs/cci/Pages/index.aspx
    idref: CCI-000366
    relation: ''
  - system: http://iase.disa.mil/stigs/os/general/Pages/index.aspx
    idref: SRG-OS-000480-GPOS-00227
    relation: ''
  - system: http://iase.disa.mil/stigs/os/unix-linux/Pages/index.aspx
    idref: RHEL-08-020650
    relation: ''
---


## /rule

All Interactive User Home Directories Must Be Group-Owned By The Primary
User

## /rationale

If
the Group Identifier (GID) of a local interactive users home directory
is not the same as the primary GID of the user, this would allow
unauthorized access to the users files, and users that share the same
group may not be able to access files that they legitimately should.

## /description

Change
the group owner of interactive users home directory to the group found
in `/etc/passwd`. To change the group owner of interactive users home
directory, use the following command:

``` 
$ sudo chgrp USER_GROUP /home/USER
```
