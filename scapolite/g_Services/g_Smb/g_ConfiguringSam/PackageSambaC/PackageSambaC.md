---
scapolite:
    class: rule
    version: '0.51'
id: package_samba-common_installed
id_namespace: org.ssgproject.RHEL-8
title: Install the Samba Common Package
rule: <see below>
rationale: <see below>
description: <see below>
applicability:
  - system: org.scapolite.xccdf.applicability
    severity: medium
implementations:
  - relative_id: '01'
    title: Automated fix
    automations:
      - system: urn:xccdf:fix:script:sh
        href: package_samba-common_installed.sh
        complexity: low
        disruption: low
  - relative_id: '02'
    title: Automated fix
    automations:
      - system: urn:xccdf:fix:script:ansible
        href: package_samba-common_installed.ansible
        complexity: low
        disruption: low
  - relative_id: '03'
    title: Automated fix
    automations:
      - system: urn:xccdf:fix:script:puppet
        href: package_samba-common_installed.puppet
        complexity: low
        disruption: low
  - relative_id: '04'
    title: Automated fix
    automations:
      - system: urn:redhat:anaconda:pre
        href: package_samba-common_installed.anaconda
        complexity: low
        disruption: low
checks:
  - relative_id: '01'
    automations:
      - system: http://oval.mitre.org/XMLSchema/oval-definitions-5
        idref: oval:ssg-package_samba-common_installed:def:1
        href: package_samba-common_installed.oval.xml
  - relative_id: '02'
    automations:
      - system: http://scap.nist.gov/schema/ocil/2
        idref: ocil:ssg-package_samba-common_installed_ocil:questionnaire:1
        href: package_samba-common_installed.ocil.xml
---


## /rule

Install the Samba Common Package

## /rationale

If
the samba-common package is not installed, samba cannot be configured.

## /description

The
`samba-common` package should be installed. The `samba-common` package
can be installed with the following command:

``` 
$ sudo yum install samba-common
```
