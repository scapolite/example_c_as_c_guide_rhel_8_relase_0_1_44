---
scapolite:
    class: rule
    version: '0.51'
id: account_unique_name
id_namespace: org.ssgproject.RHEL-8
title: Ensure All Accounts on the System Have Unique Names
rule: <see below>
rationale: <see below>
description: <see below>
applicability:
  - system: org.scapolite.xccdf.applicability
    severity: medium
checks:
  - relative_id: '01'
    automations:
      - system: http://oval.mitre.org/XMLSchema/oval-definitions-5
        idref: oval:ssg-account_unique_name:def:1
        href: account_unique_name.oval.xml
  - relative_id: '02'
    automations:
      - system: http://scap.nist.gov/schema/ocil/2
        idref: ocil:ssg-account_unique_name_ocil:questionnaire:1
        href: account_unique_name.ocil.xml
crossrefs:
  - system: https://nvd.nist.gov/cce/index.cfm
    idref: CCE-80674-5
    relation: ''
  - system: https://www.fbi.gov/file-repository/cjis-security-policy-v5_5_20160601-2-1.pdf
    idref: 5.5.2
    relation: ''
  - system: http://iase.disa.mil/stigs/cci/Pages/index.aspx
    idref: CCI-000770
    relation: ''
  - system: http://iase.disa.mil/stigs/cci/Pages/index.aspx
    idref: CCI-000804
    relation: ''
  - system: https://www.pcisecuritystandards.org/documents/PCI_DSS_v3-1.pdf
    idref: Req-8.1.1
    relation: ''
  - system: https://nvd.nist.gov/cce/index.cfm
    idref: CCE-80674-5
    relation: ''
---


## /rule

Ensure All Accounts on the System Have Unique Names

## /rationale

Unique
usernames allow for accountability on the system.

## /description

Change
usernames, or delete accounts, so each has a unique name.
