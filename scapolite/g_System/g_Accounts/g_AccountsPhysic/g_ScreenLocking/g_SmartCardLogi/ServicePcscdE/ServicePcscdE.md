---
scapolite:
    class: rule
    version: '0.51'
id: service_pcscd_enabled
id_namespace: org.ssgproject.RHEL-8
title: Enable the pcscd Service
rule: <see below>
rationale: <see below>
description: <see below>
applicability:
  - system: org.scapolite.xccdf.applicability
    severity: medium
  - system: https://scap.nist.gov/schema/cpe/2.2
    cpes:
      - cpe:/a:machine
implementations:
  - relative_id: '01'
    title: Automated fix
    automations:
      - system: urn:xccdf:fix:script:sh
        href: service_pcscd_enabled.sh
        complexity: low
        disruption: low
  - relative_id: '02'
    title: Automated fix
    automations:
      - system: urn:xccdf:fix:script:ansible
        href: service_pcscd_enabled.ansible
        complexity: low
        disruption: low
checks:
  - relative_id: '01'
    automations:
      - system: http://oval.mitre.org/XMLSchema/oval-definitions-5
        idref: oval:ssg-service_pcscd_enabled:def:1
        href: service_pcscd_enabled.oval.xml
  - relative_id: '02'
    automations:
      - system: http://scap.nist.gov/schema/ocil/2
        idref: ocil:ssg-service_pcscd_enabled_ocil:questionnaire:1
        href: service_pcscd_enabled.ocil.xml
crossrefs:
  - system: https://nvd.nist.gov/cce/index.cfm
    idref: CCE-80881-6
    relation: ''
  - system: http://iase.disa.mil/stigs/cci/Pages/index.aspx
    idref: CCI-001954
    relation: ''
  - system: http://iase.disa.mil/stigs/os/general/Pages/index.aspx
    idref: SRG-OS-000375-GPOS-00160
    relation: ''
  - system: org.scapolite.unknown
    idref: SRG-OS-000377-VMM-001530
    relation: ''
  - system: https://nvd.nist.gov/cce/index.cfm
    idref: CCE-80881-6
    relation: ''
---


## /rule

Enable the pcscd Service

## /rationale

Using
an authentication device, such as a CAC or token that is separate from
the information system, ensures that even if the information system is
compromised, that compromise will not affect credentials stored on the
authentication device.  
  
Multifactor solutions that require devices separate from information
systems gaining access include, for example, hardware tokens providing
time-based or challenge-response authenticators and smart cards such as
the U.S. Government Personal Identity Verification card and the DoD
Common Access Card.

## /description

The `pcscd` service can be enabled with the following command:

``` 
$ sudo systemctl enable pcscd.service
```
