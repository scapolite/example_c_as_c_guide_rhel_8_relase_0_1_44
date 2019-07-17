---
scapolite:
    class: rule
    version: '0.51'
id: accounts_password_set_max_life_existing
id_namespace: org.ssgproject.RHEL-8
title: Set Existing Passwords Maximum Age
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
        idref: ocil:ssg-accounts_password_set_max_life_existing_ocil:questionnaire:1
        href: accounts_password_set_max_life_existing.ocil.xml
crossrefs:
  - system: http://iase.disa.mil/stigs/cci/Pages/index.aspx
    idref: CCI-000199
    relation: ''
  - system: http://nvlpubs.nist.gov/nistpubs/SpecialPublications/NIST.SP.800-53r4.pdf
    idref: IA-5(1)(d)
    relation: ''
  - system: http://iase.disa.mil/stigs/os/general/Pages/index.aspx
    idref: SRG-OS-000076-GPOS-00044
    relation: ''
  - system: http://iase.disa.mil/stigs/os/unix-linux/Pages/index.aspx
    idref: RHEL-08-010260
    relation: ''
  - system: org.scapolite.unknown
    idref: SRG-OS-000076-VMM-000430
    relation: ''
---


## /rule

Set Existing Passwords Maximum Age

## /rationale

Any
password, no matter how complex, can eventually be cracked. Therefore,
passwords need to be changed periodically. If the operating system does
not limit the lifetime of passwords and force users to change their
passwords, there is the risk that the operating system passwords could
be compromised.

## /description

Configure
non-compliant accounts to enforce a 60-day maximum password lifetime
restriction by running the following command:

``` 
$ sudo chage -M 60 USER
```
