---
scapolite:
    class: rule
    version: '0.51'
id: etc_system_fips_exists
id_namespace: org.ssgproject.RHEL-8
title: Ensure \'/etc/system-fips\' exists
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
        idref: oval:ssg-etc_system_fips_exists:def:1
        href: etc_system_fips_exists.oval.xml
  - relative_id: '02'
    automations:
      - system: http://scap.nist.gov/schema/ocil/2
        idref: ocil:ssg-etc_system_fips_exists_ocil:questionnaire:1
        href: etc_system_fips_exists.ocil.xml
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

Ensure \'/etc/system-fips\' exists

## /rationale

Use
of weak or untested encryption algorithms undermines the purposes of
utilizing encryption to protect data. The operating system must
implement cryptographic modules adhering to the higher standards
approved by the federal government since this provides assurance they
have been tested and validated.

## /description

On
a system where FIPS mode is enabled, `/etc/system-fips` must exist. To
enable FIPS mode, run the following command:

``` 
fips-mode-setup --enable
```
