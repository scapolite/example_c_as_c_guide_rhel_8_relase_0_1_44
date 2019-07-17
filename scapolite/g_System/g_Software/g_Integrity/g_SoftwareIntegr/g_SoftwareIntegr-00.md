---
scapolite:
    class: group
    version: '0.51'
id: software-integrity
id_namespace: org.ssgproject.RHEL-8
title: Software Integrity Checking
description: <see below>
contents:
  - class: group_ref
    idref: rpm_verification
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Verify Integrity with RPM
  - class: group_ref
    idref: aide
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Verify Integrity with AIDE
---


## /description

Both
the AIDE (Advanced Intrusion Detection Environment) software and the RPM
package management system provide mechanisms for verifying the integrity
of installed software. AIDE uses snapshots of file metadata (such as
hashes) and compares these to current system files in order to detect
changes.  
  
The RPM package management system can conduct integrity checks by
comparing information in its metadata database with files installed on
the system.
