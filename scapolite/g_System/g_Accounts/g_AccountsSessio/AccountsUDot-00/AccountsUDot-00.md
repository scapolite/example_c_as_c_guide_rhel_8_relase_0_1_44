---
scapolite:
    class: rule
    version: '0.51'
id: accounts_user_dot_no_world_writable_programs
id_namespace: org.ssgproject.RHEL-8
title: User Initialization Files Must Not Run World-Writable Programs
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
        idref: ocil:ssg-accounts_user_dot_no_world_writable_programs_ocil:questionnaire:1
        href: accounts_user_dot_no_world_writable_programs.ocil.xml
crossrefs:
  - system: http://iase.disa.mil/stigs/cci/Pages/index.aspx
    idref: CCI-000366
    relation: ''
  - system: http://iase.disa.mil/stigs/os/general/Pages/index.aspx
    idref: SRG-OS-000480-GPOS-00227
    relation: ''
  - system: http://iase.disa.mil/stigs/os/unix-linux/Pages/index.aspx
    idref: RHEL-08-020730
    relation: ''
---


## /rule

User Initialization Files Must Not Run World-Writable Programs

## /rationale

If
user start-up files execute world-writable programs, especially in
unprotected directories, they could be maliciously modified to destroy
user files or otherwise compromise the system at the user level. If the
system is compromised at the user level, it is easier to elevate
privileges to eventually compromise the system at the root and network
level.

## /description

Set
the mode on files being executed by the user initialization files with
the following command:

``` 
$ sudo chmod 0755 FILE
```
