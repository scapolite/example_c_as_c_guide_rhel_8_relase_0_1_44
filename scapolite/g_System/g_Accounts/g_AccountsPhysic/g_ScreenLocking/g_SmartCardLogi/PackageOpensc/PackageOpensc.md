---
scapolite:
    class: rule
    version: '0.51'
id: package_opensc_installed
id_namespace: org.ssgproject.RHEL-8
title: Install the opensc Package For Multifactor Authentication
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
        href: package_opensc_installed.sh
        complexity: low
        disruption: low
  - relative_id: '02'
    title: Automated fix
    automations:
      - system: urn:xccdf:fix:script:ansible
        href: package_opensc_installed.ansible
        complexity: low
        disruption: low
  - relative_id: '03'
    title: Automated fix
    automations:
      - system: urn:xccdf:fix:script:puppet
        href: package_opensc_installed.puppet
        complexity: low
        disruption: low
  - relative_id: '04'
    title: Automated fix
    automations:
      - system: urn:redhat:anaconda:pre
        href: package_opensc_installed.anaconda
        complexity: low
        disruption: low
checks:
  - relative_id: '01'
    automations:
      - system: http://oval.mitre.org/XMLSchema/oval-definitions-5
        idref: oval:ssg-package_opensc_installed:def:1
        href: package_opensc_installed.oval.xml
  - relative_id: '02'
    automations:
      - system: http://scap.nist.gov/schema/ocil/2
        idref: ocil:ssg-package_opensc_installed_ocil:questionnaire:1
        href: package_opensc_installed.ocil.xml
crossrefs:
  - system: https://nvd.nist.gov/cce/index.cfm
    idref: CCE-80846-9
    relation: ''
  - system: http://iase.disa.mil/stigs/cci/Pages/index.aspx
    idref: CCI-001954
    relation: ''
  - system: http://iase.disa.mil/stigs/os/general/Pages/index.aspx
    idref: SRG-OS-000376-VMM-001520
    relation: ''
  - system: https://nvd.nist.gov/cce/index.cfm
    idref: CCE-80846-9
    relation: ''
---


## /rule

Install the opensc Package For Multifactor Authentication

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

The
`opensc` package can be installed with the following command:

``` 
$ sudo yum install opensc
```
