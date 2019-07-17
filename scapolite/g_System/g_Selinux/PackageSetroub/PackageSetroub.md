---
scapolite:
    class: rule
    version: '0.51'
id: package_setroubleshoot_removed
id_namespace: org.ssgproject.RHEL-8
title: Uninstall setroubleshoot Package
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
        href: package_setroubleshoot_removed.sh
        complexity: low
        disruption: low
  - relative_id: '02'
    title: Automated fix
    automations:
      - system: urn:xccdf:fix:script:ansible
        href: package_setroubleshoot_removed.ansible
        complexity: low
        disruption: low
  - relative_id: '03'
    title: Automated fix
    automations:
      - system: urn:xccdf:fix:script:puppet
        href: package_setroubleshoot_removed.puppet
        complexity: low
        disruption: low
  - relative_id: '04'
    title: Automated fix
    automations:
      - system: urn:redhat:anaconda:pre
        href: package_setroubleshoot_removed.anaconda
        complexity: low
        disruption: low
checks:
  - relative_id: '01'
    automations:
      - system: http://oval.mitre.org/XMLSchema/oval-definitions-5
        idref: oval:ssg-package_setroubleshoot_removed:def:1
        href: package_setroubleshoot_removed.oval.xml
crossrefs:
  - system: http://www.ssi.gouv.fr/administration/bonnes-pratiques/
    idref: NT28(R68)
    relation: ''
  - system: org.scapolite.unknown
    idref: 1.6.1.4
    relation: ''
---


## /rule

Uninstall setroubleshoot Package

## /rationale

The
SETroubleshoot service is an unnecessary daemon to have running on a
server

## /description

The
SETroubleshoot service notifies desktop users of SELinux denials. The
service provides information around configuration errors, unauthorized
intrusions, and other potential errors. The `setroubleshoot` package can
be removed with the following command:

``` 
$ sudo yum erase setroubleshoot
```
