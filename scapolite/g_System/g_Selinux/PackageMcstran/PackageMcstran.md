---
scapolite:
    class: rule
    version: '0.51'
id: package_mcstrans_removed
id_namespace: org.ssgproject.RHEL-8
title: Uninstall mcstrans Package
rule: <see below>
rationale: <see below>
description: <see below>
applicability:
  - system: org.scapolite.xccdf.applicability
  - system: https://scap.nist.gov/schema/cpe/2.2
    cpes:
      - cpe:/a:machine
implementations:
  - relative_id: '01'
    title: Automated fix
    automations:
      - system: urn:xccdf:fix:script:sh
        href: package_mcstrans_removed.sh
        complexity: low
        disruption: low
  - relative_id: '02'
    title: Automated fix
    automations:
      - system: urn:xccdf:fix:script:ansible
        href: package_mcstrans_removed.ansible
        complexity: low
        disruption: low
  - relative_id: '03'
    title: Automated fix
    automations:
      - system: urn:xccdf:fix:script:puppet
        href: package_mcstrans_removed.puppet
        complexity: low
        disruption: low
  - relative_id: '04'
    title: Automated fix
    automations:
      - system: urn:redhat:anaconda:pre
        href: package_mcstrans_removed.anaconda
        complexity: low
        disruption: low
checks:
  - relative_id: '01'
    automations:
      - system: http://oval.mitre.org/XMLSchema/oval-definitions-5
        idref: oval:ssg-package_mcstrans_removed:def:1
        href: package_mcstrans_removed.oval.xml
---


## /rule

Uninstall mcstrans Package

## /rationale

Since
this service is not used very often, disable it to reduce the amount of
potentially vulnerable code running on the system. NOTE: This rule was
added in support of the CIS RHEL6 v1.2.0 benchmark. Please note that Red
Hat does not feel this rule is security relevant.

## /description

The
`mcstransd` daemon provides category label information to client
processes requesting information. The label translations are defined in
`/etc/selinux/targeted/setrans.conf`. The `mcstrans` package can be
removed with the following command:

``` 
$ sudo yum erase mcstrans
```
