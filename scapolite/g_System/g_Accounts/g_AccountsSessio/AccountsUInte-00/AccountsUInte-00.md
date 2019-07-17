---
scapolite:
    class: rule
    version: '0.51'
id: accounts_user_interactive_home_directory_exists
id_namespace: org.ssgproject.RHEL-8
title: All Interactive Users Home Directories Must Exist
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
        idref: ocil:ssg-accounts_user_interactive_home_directory_exists_ocil:questionnaire:1
        href: accounts_user_interactive_home_directory_exists.ocil.xml
crossrefs:
  - system: http://iase.disa.mil/stigs/cci/Pages/index.aspx
    idref: CCI-000366
    relation: ''
  - system: http://iase.disa.mil/stigs/os/general/Pages/index.aspx
    idref: SRG-OS-000480-GPOS-00227
    relation: ''
  - system: http://iase.disa.mil/stigs/os/unix-linux/Pages/index.aspx
    idref: RHEL-08-020620
    relation: ''
---


## /rule

All Interactive Users Home Directories Must Exist

## /rationale

If
a local interactive user has a home directory defined that does not
exist, the user may be given access to the / directory as the current
working directory upon logon. This could create a Denial of Service
because the user would not be able to access their logon configuration
files, and it may give them visibility to system files they normally
would not be able to access.

## /description

Create
home directories to all interactive users that currently do not have a
home directory assigned. Use the following commands to create the user
home directory assigned in `/etc/passwd`:

``` 
$ sudo mkdir /home/USER
```
