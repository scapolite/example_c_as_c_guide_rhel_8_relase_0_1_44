---
scapolite:
    class: rule
    version: '0.51'
id: installed_OS_is_FIPS_certified
id_namespace: org.ssgproject.RHEL-8
title: The Installed Operating System Is FIPS 140-2 Certified
rule: <see below>
rationale: <see below>
description: <see below>
applicability:
  - system: org.scapolite.xccdf.applicability
    severity: high
checks:
  - relative_id: '01'
    automations:
      - system: http://oval.mitre.org/XMLSchema/oval-definitions-5
        idref: oval:ssg-installed_OS_is_FIPS_certified:def:1
        href: installed_OS_is_FIPS_certified.oval.xml
  - relative_id: '02'
    automations:
      - system: http://scap.nist.gov/schema/ocil/2
        idref: ocil:ssg-installed_OS_is_FIPS_certified_ocil:questionnaire:1
        href: installed_OS_is_FIPS_certified.ocil.xml
crossrefs:
  - system: https://nvd.nist.gov/cce/index.cfm
    idref: CCE-80830-3
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
    idref: IA-7
    relation: ''
  - system: http://nvlpubs.nist.gov/nistpubs/SpecialPublications/NIST.SP.800-53r4.pdf
    idref: SC-13
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
  - system: https://nvd.nist.gov/cce/index.cfm
    idref: CCE-80830-3
    relation: ''
---


## /rule

The Installed Operating System Is FIPS 140-2 Certified

## /rationale

The
Federal Information Processing Standard (FIPS) Publication 140-2, (FIPS
PUB 140-2) is a computer security standard. The standard specifies
security requirements for cryptographic modules used to protect
sensitive unclassified information. Refer to the full FIPS 140-2
standard at
<http://csrc.nist.gov/publications/fips/fips140-2/fips1402.pdf> for
further details on the requirements. FIPS 140-2 validation is required
by U.S. law when information systems use cryptography to protect
sensitive government information. In order to achieve FIPS 140-2
certification, cryptographic modules are subject to extensive testing by
independent laboratories, accredited by National Institute of Standards
and Technology (NIST).

## /description

To
enable processing of sensitive information the operating system must
provide certified cryptographic modules compliant with FIPS 140-2
standard.
