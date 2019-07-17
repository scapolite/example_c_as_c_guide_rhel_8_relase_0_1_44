---
scapolite:
    class: rule
    version: '0.51'
id: partition_for_var_tmp
id_namespace: org.ssgproject.RHEL-8
title: Ensure /var/tmp Located On Separate Partition
rule: <see below>
rationale: <see below>
description: <see below>
applicability:
  - system: org.scapolite.xccdf.applicability
    severity: low
  - system: https://scap.nist.gov/schema/cpe/2.2
    cpes:
      - cpe:/a:machine
checks:
  - relative_id: '01'
    automations:
      - system: http://scap.nist.gov/schema/ocil/2
        idref: ocil:ssg-partition_for_var_tmp_ocil:questionnaire:1
        href: partition_for_var_tmp.ocil.xml
crossrefs:
  - system: org.scapolite.unknown
    idref: 1.1.7
    relation: ''
---


## /rule

Ensure /var/tmp Located On Separate Partition

## /rationale

The
`/var/tmp` partition is used as temporary storage by many programs.
Placing `/var/tmp` in its own partition enables the setting of more
restrictive mount options, which can help protect programs which use it.

## /description

The
`/var/tmp` directory is a world-writable directory used for temporary
file storage. Ensure it has its own partition or logical volume at
installation time, or migrate it using LVM.
