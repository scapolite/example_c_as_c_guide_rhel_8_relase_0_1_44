---
scapolite:
    class: rule
    version: '0.51'
id: enable_fips_mode
id_namespace: org.ssgproject.RHEL-8
title: Enable FIPS Mode
rule: <see below>
rationale: <see below>
description: <see below>
applicability:
  - system: org.scapolite.xccdf.applicability
    severity: high
  - system: https://scap.nist.gov/schema/cpe/2.2
    cpes:
      - cpe:/a:machine
implementations:
  - relative_id: '01'
    title: Automated fix
    automations:
      - system: urn:xccdf:fix:script:sh
        href: enable_fips_mode.sh
checks:
  - relative_id: '01'
    automations:
      - system: http://oval.mitre.org/XMLSchema/oval-definitions-5
        idref: oval:ssg-enable_fips_mode:def:1
        href: enable_fips_mode.oval.xml
        exports:
          - value_id_namespace: org.ssgproject.RHEL-8
            value_idref: var_system_crypto_policy
            variable_idref: oval:ssg-var_system_crypto_policy:var:1
  - relative_id: '02'
    automations:
      - system: http://scap.nist.gov/schema/ocil/2
        idref: ocil:ssg-enable_fips_mode_ocil:questionnaire:1
        href: enable_fips_mode.ocil.xml
crossrefs:
  - system: https://nvd.nist.gov/cce/index.cfm
    idref: CCE-80942-6
    relation: ''
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
  - system: https://nvd.nist.gov/cce/index.cfm
    idref: CCE-80942-6
    relation: ''
---


## /rule

Enable FIPS Mode

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

  
The `fips-mode-setup` command will configure the system in FIPS mode by
automatically configuring the following:

-   Setting the kernel FIPS mode flag (`/proc/sys/crypto/fips_enabled`)
    to `1`
-   Creating `/etc/system-fips`
-   Setting the system crypto policy in `/etc/crypto-policies/config` to
    `FIPS`
-   Loading the Dracut `fips` module

Furthermore, the system running in FIPS mode should be FIPS certified by
NIST.
