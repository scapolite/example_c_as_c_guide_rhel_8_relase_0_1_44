---
scapolite:
    class: rule
    version: '0.51'
id: partition_for_web_content
id_namespace: org.ssgproject.RHEL-8
title: Ensure Web Content Located on Separate partition
rule: <see below>
rationale: <see below>
description: <see below>
applicability:
  - system: org.scapolite.xccdf.applicability
    severity: medium
checks:
  - relative_id: '01'
    automations:
      - system: http://scap.nist.gov/schema/ocil/2
        idref: ocil:ssg-partition_for_web_content_ocil:questionnaire:1
        href: partition_for_web_content.ocil.xml
crossrefs:
  - system: http://iase.disa.mil/stigs/os/unix-linux/Pages/index.aspx
    idref: RHEL-08-WG205
    relation: ''
---


## /rule

Ensure Web Content Located on Separate partition

## /rationale

Application
partitioning enables an additional security measure by securing user
traffic under one security context, while managing system and
application files under another. Web content is can be to an anonymous
web user. For such an account to have access to system files of any type
is a major security risk that is avoidable and desirable. Failure to
partition the system files from the web site documents increases risk of
attack via directory traversal, or impede web site availability due to
drive space exhaustion.

## /description

The
`DocumentRoot` directory is used for storing web content and data.
Ensure that the `DocumentRoot` directory exists on a separate logical
volume at installation time, or migrate it using LVM.
