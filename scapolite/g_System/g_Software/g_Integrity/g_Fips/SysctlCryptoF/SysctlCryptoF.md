---
scapolite:
    class: rule
    version: '0.51'
id: sysctl_crypto_fips_enabled
id_namespace: org.ssgproject.RHEL-8
title: Set kernel parameter \'crypto.fips\_enabled\' to 1
rule: <see below>
rationale: <see below>
description: <see below>
applicability:
  - system: org.scapolite.xccdf.applicability
    severity: high
  - system: https://scap.nist.gov/schema/cpe/2.2
    cpes:
      - cpe:/a:machine
checks:
  - relative_id: '01'
    automations:
      - system: http://oval.mitre.org/XMLSchema/oval-definitions-5
        idref: oval:ssg-sysctl_crypto_fips_enabled:def:1
        href: sysctl_crypto_fips_enabled.oval.xml
  - relative_id: '02'
    automations:
      - system: http://scap.nist.gov/schema/ocil/2
        idref: ocil:ssg-sysctl_crypto_fips_enabled_ocil:questionnaire:1
        href: sysctl_crypto_fips_enabled.ocil.xml
crossrefs:
  - system: http://iase.disa.mil/stigs/cci/Pages/index.aspx
    idref: CCI-000068
    relation: ''
  - system: http://iase.disa.mil/stigs/cci/Pages/index.aspx
    idref: CCI-000803
    relation: ''
  - system: http://iase.disa.mil/stigs/cci/Pages/index.aspx
    idref: CCI-002450
    relation: ''
  - system: http://nvlpubs.nist.gov/nistpubs/SpecialPublications/NIST.SP.800-53r4.pdf
    idref: IA-5
    relation: ''
  - system: http://nvlpubs.nist.gov/nistpubs/SpecialPublications/NIST.SP.800-53r4.pdf
    idref: SC-13
    relation: ''
  - system: http://nvlpubs.nist.gov/nistpubs/SpecialPublications/NIST.SP.800-53r4.pdf
    idref: AC-17(2)
    relation: ''
  - system: http://nvlpubs.nist.gov/nistpubs/SpecialPublications/NIST.SP.800-53r4.pdf
    idref: IA-7
    relation: ''
  - system: org.scapolite.unknown
    idref: SRG-OS-000120-VMM-000600
    relation: ''
  - system: org.scapolite.unknown
    idref: SRG-OS-000478-VMM-001980
    relation: ''
  - system: org.scapolite.unknown
    idref: SRG-OS-000396-VMM-001590
    relation: ''
---


## /rule

Set kernel parameter \'crypto.fips\_enabled\' to 1

## /rationale

Use
of weak or untested encryption algorithms undermines the purposes of
utilizing encryption to protect data. The operating system must
implement cryptographic modules adhering to the higher standards
approved by the federal government since this provides assurance they
have been tested and validated.

## /description

System
running in FIPS mode is indicated by kernel parameter
`'crypto.fips_enabled'`. This parameter should be set to `1` in FIPS
mode. To enable FIPS mode, run the following command:

``` 
fips-mode-setup --enable
```
