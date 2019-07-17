---
scapolite:
    class: rule
    version: '0.51'
id: file_permission_user_init_files
id_namespace: org.ssgproject.RHEL-8
title: Ensure All User Initialization Files Have Mode 0740 Or Less Permissive
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
        idref: ocil:ssg-file_permission_user_init_files_ocil:questionnaire:1
        href: file_permission_user_init_files.ocil.xml
crossrefs:
  - system: http://iase.disa.mil/stigs/cci/Pages/index.aspx
    idref: CCI-000366
    relation: ''
  - system: http://iase.disa.mil/stigs/os/general/Pages/index.aspx
    idref: SRG-OS-000480-GPOS-00227
    relation: ''
  - system: http://iase.disa.mil/stigs/os/unix-linux/Pages/index.aspx
    idref: RHEL-08-020710
    relation: ''
---


## /rule

Ensure All User Initialization Files Have Mode 0740 Or Less Permissive

## /rationale

Local
initialization files are used to configure the user\'s shell environment
upon logon. Malicious modification of these files could compromise
accounts upon logon.

## /description

Set
the mode of the user initialization files to `0740` with the following
command:

``` 
$ sudo chmod 0740 /home/USER/.INIT_FILE
```
