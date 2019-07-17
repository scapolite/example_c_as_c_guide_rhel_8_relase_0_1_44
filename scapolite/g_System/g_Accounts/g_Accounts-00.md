---
scapolite:
    class: group
    version: '0.51'
id: accounts
id_namespace: org.ssgproject.RHEL-8
title: Account and Access Control
description: <see below>
contents:
  - class: group_ref
    idref: accounts-session
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Secure Session Configuration Files for Login Accounts
  - class: group_ref
    idref: accounts-banners
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Warning Banners for System Accesses
  - class: group_ref
    idref: accounts-restrictions
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Protect Accounts by Restricting Password-Based Login
  - class: group_ref
    idref: accounts-physical
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Protect Physical Console Access
  - class: group_ref
    idref: accounts-pam
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Protect Accounts by Configuring PAM
---


## /description

In
traditional Unix security, if an attacker gains shell access to a
certain login account, they can perform any action or access any file to
which that account has access. Therefore, making it more difficult for
unauthorized people to gain shell access to accounts, particularly to
privileged accounts, is a necessary part of securing a system. This
section introduces mechanisms for restricting access to accounts under
Red Hat Enterprise Linux 8.
