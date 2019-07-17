---
scapolite:
    class: rule
    version: '0.51'
id: package_firewalld_installed
id_namespace: org.ssgproject.RHEL-8
title: Install firewalld
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
        href: package_firewalld_installed.sh
        complexity: low
        disruption: low
  - relative_id: '02'
    title: Automated fix
    automations:
      - system: urn:xccdf:fix:script:ansible
        href: package_firewalld_installed.ansible
        complexity: low
        disruption: low
  - relative_id: '03'
    title: Automated fix
    automations:
      - system: urn:xccdf:fix:script:puppet
        href: package_firewalld_installed.puppet
        complexity: low
        disruption: low
  - relative_id: '04'
    title: Automated fix
    automations:
      - system: urn:redhat:anaconda:pre
        href: package_firewalld_installed.anaconda
        complexity: low
        disruption: low
checks:
  - relative_id: '01'
    automations:
      - system: http://oval.mitre.org/XMLSchema/oval-definitions-5
        idref: oval:ssg-package_firewalld_installed:def:1
        href: package_firewalld_installed.oval.xml
  - relative_id: '02'
    automations:
      - system: http://scap.nist.gov/schema/ocil/2
        idref: ocil:ssg-package_firewalld_installed_ocil:questionnaire:1
        href: package_firewalld_installed.ocil.xml
---


## /rule

Install firewalld

## /rationale

The
firewalld package should be installed to provide access control methods.

## /description

The
`firewalld` package can be installed with the following command:

``` 
$ sudo yum install firewalld
```
