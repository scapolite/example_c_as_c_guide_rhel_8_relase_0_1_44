---
scapolite:
    class: group
    version: '0.51'
id: accounts-restrictions
id_namespace: org.ssgproject.RHEL-8
title: Protect Accounts by Restricting Password-Based Login
description: <see below>
contents:
  - class: group_ref
    idref: account_expiration
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Set Account Expiration Parameters
  - class: group_ref
    idref: root_logins
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Restrict Root Logins
  - class: group_ref
    idref: password_storage
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Verify Proper Storage and Existence of Password Hashes
  - class: group_ref
    idref: password_expiration
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Set Password Expiration Parameters
---


## /description

Conventionally,
Unix shell accounts are accessed by providing a username and password to
a login program, which tests these values for correctness using the
`/etc/passwd` and `/etc/shadow` files. Password-based login is
vulnerable to guessing of weak passwords, and to sniffing and
man-in-the-middle attacks against passwords entered over a network or at
an insecure console. Therefore, mechanisms for accessing accounts by
entering usernames and passwords should be restricted to those which are
operationally necessary.
