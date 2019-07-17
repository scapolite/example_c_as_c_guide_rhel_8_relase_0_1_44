---
scapolite:
    class: rule
    version: '0.51'
id: install_smartcard_packages
id_namespace: org.ssgproject.RHEL-8
title: Install Smart Card Packages For Multifactor Authentication
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
        href: install_smartcard_packages.sh
checks:
  - relative_id: '01'
    automations:
      - system: http://scap.nist.gov/schema/ocil/2
        idref: ocil:ssg-install_smartcard_packages_ocil:questionnaire:1
        href: install_smartcard_packages.ocil.xml
crossrefs:
  - system: http://iase.disa.mil/stigs/cci/Pages/index.aspx
    idref: CCI-001954
    relation: ''
  - system: http://iase.disa.mil/stigs/os/general/Pages/index.aspx
    idref: SRG-OS-000375-GPOS-00160
    relation: ''
  - system: http://iase.disa.mil/stigs/os/unix-linux/Pages/index.aspx
    idref: RHEL-08-041001
    relation: ''
---


## /rule

Install Smart Card Packages For Multifactor Authentication

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
the operating system to implement multifactor authentication by
installing the required packages with the following command: The
`esc pam_pkcs11` package can be installed with the following command:

``` 
$ sudo yum install esc pam_pkcs11
```
