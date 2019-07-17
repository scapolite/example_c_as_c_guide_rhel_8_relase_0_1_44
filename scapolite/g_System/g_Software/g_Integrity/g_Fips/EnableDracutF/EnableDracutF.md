---
scapolite:
    class: rule
    version: '0.51'
id: enable_dracut_fips_module
id_namespace: org.ssgproject.RHEL-8
title: Enable Dracut FIPS Module
rule: <see below>
rationale: <see below>
description: <see below>
applicability:
  - system: org.scapolite.xccdf.applicability
    severity: medium
  - system: https://scap.nist.gov/schema/cpe/2.2
    cpes:
      - cpe:/a:machine
checks:
  - relative_id: '01'
    automations:
      - system: http://oval.mitre.org/XMLSchema/oval-definitions-5
        idref: oval:ssg-enable_dracut_fips_module:def:1
        href: enable_dracut_fips_module.oval.xml
  - relative_id: '02'
    automations:
      - system: http://scap.nist.gov/schema/ocil/2
        idref: ocil:ssg-enable_dracut_fips_module_ocil:questionnaire:1
        href: enable_dracut_fips_module.ocil.xml
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

Enable Dracut FIPS Module

## /rationale

Use
of weak or untested encryption algorithms undermines the purposes of
utilizing encryption to protect data. The operating system must
implement cryptographic modules adhering to the higher standards
approved by the federal government since this provides assurance they
have been tested and validated.

## /description

To
enable FIPS mode, run the following command:

``` 
fips-mode-setup --enable
```

To enable FIPS, the system requires that the `fips` module is added in
`dracut` configuration. Check if `/etc/dracut.conf.d/40-fips.conf`
contain `add_dracutmodules+=" fips "`
