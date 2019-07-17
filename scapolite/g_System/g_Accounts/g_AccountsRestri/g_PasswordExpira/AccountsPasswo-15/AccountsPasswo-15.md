---
scapolite:
    class: rule
    version: '0.51'
id: accounts_password_set_min_life_existing
id_namespace: org.ssgproject.RHEL-8
title: Set Existing Passwords Minimum Age
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
        idref: ocil:ssg-accounts_password_set_min_life_existing_ocil:questionnaire:1
        href: accounts_password_set_min_life_existing.ocil.xml
crossrefs:
  - system: http://iase.disa.mil/stigs/cci/Pages/index.aspx
    idref: CCI-000198
    relation: ''
  - system: http://nvlpubs.nist.gov/nistpubs/SpecialPublications/NIST.SP.800-53r4.pdf
    idref: IA-5(1)(d)
    relation: ''
  - system: http://iase.disa.mil/stigs/os/general/Pages/index.aspx
    idref: SRG-OS-000075-GPOS-00043
    relation: ''
  - system: http://iase.disa.mil/stigs/os/unix-linux/Pages/index.aspx
    idref: RHEL-08-010240
    relation: ''
  - system: org.scapolite.unknown
    idref: SRG-OS-000075-VMM000420
    relation: ''
---


## /rule

Set Existing Passwords Minimum Age

## /rationale

Enforcing
a minimum password lifetime helps to prevent repeated password changes
to defeat the password reuse or history enforcement requirement. If
users are allowed to immediately and continually change their password,
the password could be repeatedly changed in a short period of time to
defeat the organization\'s policy regarding password reuse.

## /description

Configure
non-compliant accounts to enforce a 24 hours/1 day minimum password
lifetime by running the following command:

``` 
$ sudo chage -m 1 USER
```
