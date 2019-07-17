---
scapolite:
    class: group
    version: '0.51'
id: aide
id_namespace: org.ssgproject.RHEL-8
title: Verify Integrity with AIDE
description: <see below>
contents:
  - class: rule_ref
    idref: aide_use_fips_hashes
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Configure AIDE to Use FIPS 140-2 for Validating Hashes
  - class: rule_ref
    idref: package_aide_installed
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Install AIDE
  - class: rule_ref
    idref: aide_build_database
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Build and Test AIDE Database
  - class: rule_ref
    idref: aide_verify_acls
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Configure AIDE to Verify Access Control Lists (ACLs)
  - class: rule_ref
    idref: aide_scan_notification
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Configure Notification of Post-AIDE Scan Details
  - class: rule_ref
    idref: aide_periodic_cron_checking
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Configure Periodic Execution of AIDE
  - class: rule_ref
    idref: aide_verify_ext_attributes
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Configure AIDE to Verify Extended Attributes
---


## /description

AIDE
conducts integrity checks by comparing information about files with
previously-gathered information. Ideally, the AIDE database is created
immediately after initial system configuration, and then again after any
software update. AIDE is highly configurable, with further configuration
information located in `/usr/share/doc/aide-VERSION`.
