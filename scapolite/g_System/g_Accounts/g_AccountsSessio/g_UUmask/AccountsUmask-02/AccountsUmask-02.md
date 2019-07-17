---
scapolite:
    class: rule
    version: '0.51'
id: accounts_umask_interactive_users
id_namespace: org.ssgproject.RHEL-8
title: Ensure the Default Umask is Set Correctly For Interactive Users
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
        idref: ocil:ssg-accounts_umask_interactive_users_ocil:questionnaire:1
        href: accounts_umask_interactive_users.ocil.xml
crossrefs:
  - system: http://iase.disa.mil/stigs/cci/Pages/index.aspx
    idref: CCI-001814
    relation: ''
  - system: http://iase.disa.mil/stigs/os/general/Pages/index.aspx
    idref: SRG-OS-000480-GPOS-00227
    relation: ''
  - system: http://iase.disa.mil/stigs/os/unix-linux/Pages/index.aspx
    idref: RHEL-08-021040
    relation: ''
---


## /rule

Ensure the Default Umask is Set Correctly For Interactive Users

## /rationale

The
umask controls the default access mode assigned to newly created files.
A umask of 077 limits new files to mode 700 or less permissive. Although
umask can be represented as a four-digit number, the first digit
representing special access modes is typically ignored or required to be
0. This requirement applies to the globally configured system defaults
and the local interactive user defaults for each account on the system.

## /description

Remove
the `UMASK` environment variable from all interactive users
initialization files.
