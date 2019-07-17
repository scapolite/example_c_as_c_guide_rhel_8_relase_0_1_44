---
scapolite:
    class: rule
    version: '0.51'
id: partition_for_srv
id_namespace: org.ssgproject.RHEL-8
title: Ensure /srv Located On Separate Partition
rule: <see below>
rationale: <see below>
description: <see below>
applicability:
  - system: org.scapolite.xccdf.applicability
checks:
  - relative_id: '01'
    automations:
      - system: http://scap.nist.gov/schema/ocil/2
        idref: ocil:ssg-partition_for_srv_ocil:questionnaire:1
        href: partition_for_srv.ocil.xml
crossrefs:
  - system: http://www.ssi.gouv.fr/administration/bonnes-pratiques/
    idref: NT28(R12)
    relation: ''
---


## /rule

Ensure /srv Located On Separate Partition

## /rationale

Srv
deserves files for local network file server such as FTP. Ensuring that
`/srv` is mounted on its own partition enables the setting of more
restrictive mount options, and also helps ensure that users cannot
trivially fill partitions used for log or audit data storage.

## /description

If
a file server (FTP, TFTP\...) is hosted locally, create a separate
partition for `/srv` at installation time (or migrate it later using
LVM). If `/srv` will be mounted from another system such as an NFS
server, then creating a separate partition is not necessary at
installation time, and the mountpoint can instead be configured later.
