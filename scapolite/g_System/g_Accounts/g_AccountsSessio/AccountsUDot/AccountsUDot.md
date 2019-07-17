---
scapolite:
    class: rule
    version: '0.51'
id: accounts_user_dot_group_ownership
id_namespace: org.ssgproject.RHEL-8
title: User Initialization Files Must Be Group-Owned By The Primary User
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
        idref: ocil:ssg-accounts_user_dot_group_ownership_ocil:questionnaire:1
        href: accounts_user_dot_group_ownership.ocil.xml
crossrefs:
  - system: http://iase.disa.mil/stigs/cci/Pages/index.aspx
    idref: CCI-000366
    relation: ''
  - system: http://iase.disa.mil/stigs/os/general/Pages/index.aspx
    idref: SRG-OS-000480-GPOS-00227
    relation: ''
  - system: http://iase.disa.mil/stigs/os/unix-linux/Pages/index.aspx
    idref: RHEL-08-020700
    relation: ''
---


## /rule

User Initialization Files Must Be Group-Owned By The Primary User

## /rationale

Local
initialization files for interactive users are used to configure the
user\'s shell environment upon logon. Malicious modification of these
files could compromise accounts upon logon.

## /description

Change
the group owner of interactive users files to the group found in

``` 
/etc/passwd
```

for the user. To change the group owner of a local interactive user home
directory, use the following command:

``` 
$ sudo chgrp USER_GROUP /home/USER/.INIT_FILE
```
