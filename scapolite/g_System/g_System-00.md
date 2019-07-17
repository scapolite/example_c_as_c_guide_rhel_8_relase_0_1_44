---
scapolite:
    class: group
    version: '0.51'
id: system
id_namespace: org.ssgproject.RHEL-8
title: System Settings
description: <see below>
contents:
  - class: group_ref
    idref: logging
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Configure Syslog
  - class: group_ref
    idref: auditing
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: System Accounting with auditd
  - class: group_ref
    idref: accounts
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Account and Access Control
  - class: group_ref
    idref: software
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Installing and Maintaining Software
  - class: group_ref
    idref: network
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Network Configuration and Firewalls
  - class: group_ref
    idref: bootloader-grub-legacy
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Set Boot Loader Password
  - class: group_ref
    idref: selinux
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: SELinux
  - class: group_ref
    idref: permissions
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: File Permissions and Masks
  - class: group_ref
    idref: entropy
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Protect Random-Number Entropy Pool
  - class: group_ref
    idref: bootloader-grub2
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Set Boot Loader Password
---


## /description

Contains
rules that check correct system settings.
