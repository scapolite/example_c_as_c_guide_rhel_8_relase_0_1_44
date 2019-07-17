---
scapolite:
    class: rule
    version: '0.51'
id: service_smb_disabled
id_namespace: org.ssgproject.RHEL-8
title: Disable Samba
rule: <see below>
rationale: <see below>
description: <see below>
applicability:
  - system: org.scapolite.xccdf.applicability
  - system: https://scap.nist.gov/schema/cpe/2.2
    cpes:
      - cpe:/a:machine
checks:
  - relative_id: '01'
    automations:
      - system: http://scap.nist.gov/schema/ocil/2
        idref: ocil:ssg-service_smb_disabled_ocil:questionnaire:1
        href: service_smb_disabled.ocil.xml
crossrefs:
  - system: org.scapolite.unknown
    idref: 2.2.12
    relation: ''
  - system: http://iase.disa.mil/stigs/cci/Pages/index.aspx
    idref: CCI-001436
    relation: ''
---


## /rule

Disable Samba

## /rationale

Running
a Samba server provides a network-based avenue of attack, and should be
disabled if not needed.

## /description

The `smb` service can be disabled with the following command:

``` 
$ sudo systemctl disable smb.service
```
