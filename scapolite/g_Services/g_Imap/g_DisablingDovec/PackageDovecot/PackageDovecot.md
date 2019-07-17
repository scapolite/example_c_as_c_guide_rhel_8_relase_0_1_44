---
scapolite:
    class: rule
    version: '0.51'
id: package_dovecot_removed
id_namespace: org.ssgproject.RHEL-8
title: Uninstall dovecot Package
rule: <see below>
rationale: <see below>
description: <see below>
applicability:
  - system: org.scapolite.xccdf.applicability
implementations:
  - relative_id: '01'
    title: Automated fix
    automations:
      - system: urn:xccdf:fix:script:sh
        href: package_dovecot_removed.sh
        complexity: low
        disruption: low
  - relative_id: '02'
    title: Automated fix
    automations:
      - system: urn:xccdf:fix:script:ansible
        href: package_dovecot_removed.ansible
        complexity: low
        disruption: low
  - relative_id: '03'
    title: Automated fix
    automations:
      - system: urn:xccdf:fix:script:puppet
        href: package_dovecot_removed.puppet
        complexity: low
        disruption: low
  - relative_id: '04'
    title: Automated fix
    automations:
      - system: urn:redhat:anaconda:pre
        href: package_dovecot_removed.anaconda
        complexity: low
        disruption: low
checks:
  - relative_id: '01'
    automations:
      - system: http://oval.mitre.org/XMLSchema/oval-definitions-5
        idref: oval:ssg-package_dovecot_removed:def:1
        href: package_dovecot_removed.oval.xml
  - relative_id: '02'
    automations:
      - system: http://scap.nist.gov/schema/ocil/2
        idref: ocil:ssg-package_dovecot_removed_ocil:questionnaire:1
        href: package_dovecot_removed.ocil.xml
---


## /rule

Uninstall dovecot Package

## /rationale

If
there is no need to make the Dovecot software available, removing it
provides a safeguard against its activation.

## /description

The
`dovecot` package can be removed with the following command:

``` 
$ sudo yum erase dovecot
```
