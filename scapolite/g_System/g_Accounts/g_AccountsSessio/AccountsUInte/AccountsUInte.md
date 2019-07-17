---
scapolite:
    class: rule
    version: '0.51'
id: accounts_user_interactive_home_directory_defined
id_namespace: org.ssgproject.RHEL-8
title: All Interactive Users Must Have A Home Directory Defined
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
        idref: ocil:ssg-accounts_user_interactive_home_directory_defined_ocil:questionnaire:1
        href: accounts_user_interactive_home_directory_defined.ocil.xml
crossrefs:
  - system: http://iase.disa.mil/stigs/cci/Pages/index.aspx
    idref: CCI-000366
    relation: ''
  - system: http://iase.disa.mil/stigs/os/general/Pages/index.aspx
    idref: SRG-OS-000480-GPOS-00227
    relation: ''
  - system: http://iase.disa.mil/stigs/os/unix-linux/Pages/index.aspx
    idref: RHEL-08-020600
    relation: ''
---


## /rule

All Interactive Users Must Have A Home Directory Defined

## /rationale

If
local interactive users are not assigned a valid home directory, there
is no place for the storage and control of files they should own.

## /description

Assign
home directories to all interactive users that currently do not have a
home directory assigned.
