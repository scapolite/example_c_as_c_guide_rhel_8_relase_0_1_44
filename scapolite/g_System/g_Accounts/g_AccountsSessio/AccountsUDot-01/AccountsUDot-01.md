---
scapolite:
    class: rule
    version: '0.51'
id: accounts_user_dot_user_ownership
id_namespace: org.ssgproject.RHEL-8
title: User Initialization Files Must Be Owned By the Primary User
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
        idref: ocil:ssg-accounts_user_dot_user_ownership_ocil:questionnaire:1
        href: accounts_user_dot_user_ownership.ocil.xml
crossrefs:
  - system: http://iase.disa.mil/stigs/cci/Pages/index.aspx
    idref: CCI-000366
    relation: ''
  - system: http://iase.disa.mil/stigs/os/general/Pages/index.aspx
    idref: SRG-OS-000480-GPOS-00227
    relation: ''
  - system: http://iase.disa.mil/stigs/os/unix-linux/Pages/index.aspx
    idref: RHEL-08-020690
    relation: ''
---


## /rule

User Initialization Files Must Be Owned By the Primary User

## /rationale

Local
initialization files are used to configure the user\'s shell environment
upon logon. Malicious modification of these files could compromise
accounts upon logon.

## /description

Set
the owner of the user initialization files for interactive users to the
primary owner with the following command:

``` 
$ sudo chown USER /home/USER/.*
```
