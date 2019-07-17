---
scapolite:
    class: rule
    version: '0.51'
id: smartcard_configure_cert_checking
id_namespace: org.ssgproject.RHEL-8
title: Configure Smart Card Certificate Status Checking
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
        href: smartcard_configure_cert_checking.sh
checks:
  - relative_id: '01'
    automations:
      - system: http://scap.nist.gov/schema/ocil/2
        idref: ocil:ssg-smartcard_configure_cert_checking_ocil:questionnaire:1
        href: smartcard_configure_cert_checking.ocil.xml
crossrefs:
  - system: http://iase.disa.mil/stigs/cci/Pages/index.aspx
    idref: CCI-001954
    relation: ''
  - system: http://iase.disa.mil/stigs/os/general/Pages/index.aspx
    idref: SRG-OS-000375-GPOS-00160
    relation: ''
  - system: http://iase.disa.mil/stigs/os/unix-linux/Pages/index.aspx
    idref: RHEL-08-041003
    relation: ''
---


## /rule

Configure Smart Card Certificate Status Checking

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

Configure
the operating system to do certificate status checking for PKI
authentication. Modify all of the `cert_policy` lines in
`/etc/pam_pkcs11/pam_pkcs11.conf` to include `ocsp_on` like so:

``` 
cert_policy = ca, ocsp_on, signature;
```
