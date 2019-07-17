---
scapolite:
    class: rule
    version: '0.51'
id: package_pcsc-lite_installed
id_namespace: org.ssgproject.RHEL-8
title: Install the pcsc-lite package
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
        href: package_pcsc-lite_installed.sh
        complexity: low
        disruption: low
  - relative_id: '02'
    title: Automated fix
    automations:
      - system: urn:xccdf:fix:script:ansible
        href: package_pcsc-lite_installed.ansible
        complexity: low
        disruption: low
  - relative_id: '03'
    title: Automated fix
    automations:
      - system: urn:xccdf:fix:script:puppet
        href: package_pcsc-lite_installed.puppet
        complexity: low
        disruption: low
  - relative_id: '04'
    title: Automated fix
    automations:
      - system: urn:redhat:anaconda:pre
        href: package_pcsc-lite_installed.anaconda
        complexity: low
        disruption: low
checks:
  - relative_id: '01'
    automations:
      - system: http://oval.mitre.org/XMLSchema/oval-definitions-5
        idref: oval:ssg-package_pcsc-lite_installed:def:1
        href: package_pcsc-lite_installed.oval.xml
  - relative_id: '02'
    automations:
      - system: http://scap.nist.gov/schema/ocil/2
        idref: ocil:ssg-package_pcsc-lite_installed_ocil:questionnaire:1
        href: package_pcsc-lite_installed.ocil.xml
crossrefs:
  - system: https://nvd.nist.gov/cce/index.cfm
    idref: CCE-80993-9
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
    idref: CCE-80993-9
    relation: ''
---


## /rule

Install the pcsc-lite package

## /rationale

The
pcsc-lite package must be installed if it is to be available for
multifactor authentication using smartcards.

## /description

The
`pcsc-lite` package can be installed with the following command:

``` 
$ sudo yum install pcsc-lite
```
