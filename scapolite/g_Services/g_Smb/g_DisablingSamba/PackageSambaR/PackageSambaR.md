---
scapolite:
    class: rule
    version: '0.51'
id: package_samba_removed
id_namespace: org.ssgproject.RHEL-8
title: Uninstall Samba Package
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
        href: package_samba_removed.sh
        complexity: low
        disruption: low
  - relative_id: '02'
    title: Automated fix
    automations:
      - system: urn:xccdf:fix:script:ansible
        href: package_samba_removed.ansible
        complexity: low
        disruption: low
  - relative_id: '03'
    title: Automated fix
    automations:
      - system: urn:xccdf:fix:script:puppet
        href: package_samba_removed.puppet
        complexity: low
        disruption: low
  - relative_id: '04'
    title: Automated fix
    automations:
      - system: urn:redhat:anaconda:pre
        href: package_samba_removed.anaconda
        complexity: low
        disruption: low
checks:
  - relative_id: '01'
    automations:
      - system: http://oval.mitre.org/XMLSchema/oval-definitions-5
        idref: oval:ssg-package_samba_removed:def:1
        href: package_samba_removed.oval.xml
  - relative_id: '02'
    automations:
      - system: http://scap.nist.gov/schema/ocil/2
        idref: ocil:ssg-package_samba_removed_ocil:questionnaire:1
        href: package_samba_removed.ocil.xml
---


## /rule

Uninstall Samba Package

## /rationale

If
there is no need to make the Samba software available, removing it
provides a safeguard against its activation.

## /description

The
`samba` package can be removed with the following command:

``` 
 $ sudo yum erase samba
```
