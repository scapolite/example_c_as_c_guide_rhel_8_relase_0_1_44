---
scapolite:
    class: group
    version: '0.51'
id: integrity
id_namespace: org.ssgproject.RHEL-8
title: System and Software Integrity
description: <see below>
contents:
  - class: group_ref
    idref: software-integrity
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Software Integrity Checking
  - class: group_ref
    idref: fips
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Federal Information Processing Standard (FIPS)
  - class: group_ref
    idref: endpoint_security_software
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Endpoint Protection Software
  - class: group_ref
    idref: certified-vendor
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Operating System Vendor Support and Certification
  - class: group_ref
    idref: crypto
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: System Cryptographic Policies
  - class: rule_ref
    idref: disable_prelink
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Disable Prelinking
---


## /description

System
and software integrity can be gained by installing antivirus, increasing
system encryption strength with FIPS, verifying installed software,
enabling SELinux, installing an Intrusion Prevention System, etc.
However, installing or enabling integrity checking tools cannot
*prevent* intrusions, but they can detect that an intrusion may have
occurred. Requirements for integrity checking may be highly dependent on
the environment in which the system will be used. Snapshot-based
approaches such as AIDE may induce considerable overhead in the presence
of frequent software updates.
