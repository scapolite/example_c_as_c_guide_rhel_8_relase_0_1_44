---
scapolite:
    class: rule
    version: '0.51'
id: accounts_have_homedir_login_defs
id_namespace: org.ssgproject.RHEL-8
title: Ensure Home Directories are Created for New Users
rule: <see below>
rationale: <see below>
description: <see below>
applicability:
  - system: org.scapolite.xccdf.applicability
    severity: medium
  - system: https://scap.nist.gov/schema/cpe/2.2
    cpes:
      - cpe:/a:shadow-utils
implementations:
  - relative_id: '01'
    title: Automated fix
    automations:
      - system: urn:xccdf:fix:script:sh
        href: accounts_have_homedir_login_defs.sh
checks:
  - relative_id: '01'
    automations:
      - system: http://oval.mitre.org/XMLSchema/oval-definitions-5
        idref: oval:ssg-accounts_have_homedir_login_defs:def:1
        href: accounts_have_homedir_login_defs.oval.xml
  - relative_id: '02'
    automations:
      - system: http://scap.nist.gov/schema/ocil/2
        idref: ocil:ssg-accounts_have_homedir_login_defs_ocil:questionnaire:1
        href: accounts_have_homedir_login_defs.ocil.xml
crossrefs:
  - system: http://iase.disa.mil/stigs/os/general/Pages/index.aspx
    idref: SRG-OS-000480-GPOS-00227
    relation: ''
---


## /rule

Ensure Home Directories are Created for New Users

## /rationale

If
local interactive users are not assigned a valid home directory, there
is no place for the storage and control of files they should own.

## /description

All
local interactive user accounts, upon creation, should be assigned a
home directory.  
  
Configure the operating system to assign home directories to all new
local interactive users by setting the `CREATE_HOME` parameter in
`/etc/login.defs` to `yes` as follows:  
  

``` 
CREATE_HOME yes
```
