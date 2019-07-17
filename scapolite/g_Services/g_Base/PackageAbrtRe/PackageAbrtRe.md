---
scapolite:
    class: rule
    version: '0.51'
id: package_abrt_removed
id_namespace: org.ssgproject.RHEL-8
title: Uninstall Automatic Bug Reporting Tool (abrt)
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
        href: package_abrt_removed.sh
        complexity: low
        disruption: low
  - relative_id: '02'
    title: Automated fix
    automations:
      - system: urn:xccdf:fix:script:ansible
        href: package_abrt_removed.ansible
        complexity: low
        disruption: low
  - relative_id: '03'
    title: Automated fix
    automations:
      - system: urn:xccdf:fix:script:puppet
        href: package_abrt_removed.puppet
        complexity: low
        disruption: low
  - relative_id: '04'
    title: Automated fix
    automations:
      - system: urn:redhat:anaconda:pre
        href: package_abrt_removed.anaconda
        complexity: low
        disruption: low
checks:
  - relative_id: '01'
    automations:
      - system: http://oval.mitre.org/XMLSchema/oval-definitions-5
        idref: oval:ssg-package_abrt_removed:def:1
        href: package_abrt_removed.oval.xml
  - relative_id: '02'
    automations:
      - system: http://scap.nist.gov/schema/ocil/2
        idref: ocil:ssg-package_abrt_removed_ocil:questionnaire:1
        href: package_abrt_removed.ocil.xml
crossrefs:
  - system: https://nvd.nist.gov/cce/index.cfm
    idref: CCE-80948-3
    relation: ''
  - system: https://nvd.nist.gov/cce/index.cfm
    idref: CCE-80948-3
    relation: ''
---


## /rule

Uninstall Automatic Bug Reporting Tool (abrt)

## /rationale

Mishandling
crash data could expose sensitive information about vulnerabilities in
software executing on the system, as well as sensitive information from
within a process\'s address space or registers.

## /description

The
Automatic Bug Reporting Tool (`abrt`) collects and reports crash data
when an application crash is detected. Using a variety of plugins, abrt
can email crash reports to system administrators, log crash reports to
files, or forward crash reports to a centralized issue tracking system
such as RHTSupport. The `abrt` package can be removed with the following
command:

``` 
$ sudo yum erase abrt
```
