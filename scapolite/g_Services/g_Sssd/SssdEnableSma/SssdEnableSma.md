---
scapolite:
    class: rule
    version: '0.51'
id: sssd_enable_smartcards
id_namespace: org.ssgproject.RHEL-8
title: Enable Smartcards in SSSD
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
        href: sssd_enable_smartcards.sh
        complexity: low
        disruption: medium
  - relative_id: '02'
    title: Automated fix
    automations:
      - system: urn:xccdf:fix:script:ansible
        href: sssd_enable_smartcards.ansible
        complexity: low
        disruption: medium
checks:
  - relative_id: '01'
    automations:
      - system: http://scap.nist.gov/schema/ocil/2
        idref: ocil:ssg-sssd_enable_smartcards_ocil:questionnaire:1
        href: sssd_enable_smartcards.ocil.xml
crossrefs:
  - system: https://nvd.nist.gov/cce/index.cfm
    idref: CCE-80909-5
    relation: ''
  - system: http://iase.disa.mil/stigs/cci/Pages/index.aspx
    idref: CCI-001954
    relation: ''
  - system: http://iase.disa.mil/stigs/os/general/Pages/index.aspx
    idref: SRG-OS-000375-GPOS-00160
    relation: ''
  - system: org.scapolite.unknown
    idref: SRG-OS-000107-VMM-000530
    relation: ''
  - system: https://nvd.nist.gov/cce/index.cfm
    idref: CCE-80909-5
    relation: ''
---


## /rule

Enable Smartcards in SSSD

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

SSSD
should be configured to authenticate access to the system using smart
cards. To enable smart cards in SSSD, set `pam_cert_auth` to `true`
under the `[pam]` section in `/etc/sssd/sssd.conf`. For example:

``` 
[pam]
pam_cert_auth = true
```
