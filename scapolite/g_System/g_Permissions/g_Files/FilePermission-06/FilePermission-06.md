---
scapolite:
    class: rule
    version: '0.51'
id: file_permissions_systemmap
id_namespace: org.ssgproject.RHEL-8
title: Verify that local System.map file (if exists) is readable only by root
rule: <see below>
rationale: <see below>
description: <see below>
applicability:
  - system: org.scapolite.xccdf.applicability
checks:
  - relative_id: '01'
    automations:
      - system: http://oval.mitre.org/XMLSchema/oval-definitions-5
        idref: oval:ssg-file_permissions_systemmap:def:1
        href: file_permissions_systemmap.oval.xml
  - relative_id: '02'
    automations:
      - system: http://scap.nist.gov/schema/ocil/2
        idref: ocil:ssg-file_permissions_systemmap_ocil:questionnaire:1
        href: file_permissions_systemmap.ocil.xml
crossrefs:
  - system: http://www.ssi.gouv.fr/administration/bonnes-pratiques/
    idref: NT28(R13)
    relation: ''
---


## /rule

Verify that local System.map file (if exists) is readable only by root

## /rationale

The
`System.map` file contains information about kernel symbols and can give
some hints to generate local exploitation.

## /description

Files
containing sensitive informations should be protected by restrictive
permissions. Most of the time, there is no need that these files need to
be read by any non-root user To properly set the permissions of
`/boot/System.map-*`, run the command:

``` 
$ sudo chmod 0600 /boot/System.map-*
```
