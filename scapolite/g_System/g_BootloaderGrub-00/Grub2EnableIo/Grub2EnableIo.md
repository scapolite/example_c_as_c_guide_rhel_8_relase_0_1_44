---
scapolite:
    class: rule
    version: '0.51'
id: grub2_enable_iommu_force
id_namespace: org.ssgproject.RHEL-8
title: IOMMU configuration directive
rule: <see below>
rationale: <see below>
description: <see below>
applicability:
  - system: org.scapolite.xccdf.applicability
  - system: https://scap.nist.gov/schema/cpe/2.2
    cpes:
      - cpe:/a:machine
checks:
  - relative_id: '01'
    automations:
      - system: http://oval.mitre.org/XMLSchema/oval-definitions-5
        idref: oval:ssg-grub2_enable_iommu_force:def:1
        href: grub2_enable_iommu_force.oval.xml
crossrefs:
  - system: http://www.ssi.gouv.fr/administration/bonnes-pratiques/
    idref: NT28(R11)
    relation: ''
---


## /rule

IOMMU configuration directive

## /rationale

On
x86 architectures, activating the I/OMMU prevents the system from
arbritrary accesses potentially made by hardware devices.

## /description

On
x86 architecture supporting VT-d, the IOMMU manages the access control
policy between the hardware devices and some of the system critical
units such as the memory.
