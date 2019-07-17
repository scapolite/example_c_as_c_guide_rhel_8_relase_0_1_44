---
scapolite:
    class: group
    version: '0.51'
id: set_password_hashing_algorithm
id_namespace: org.ssgproject.RHEL-8
title: Set Password Hashing Algorithm
description: <see below>
contents:
  - class: rule_ref
    idref: set_password_hashing_algorithm_logindefs
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Set Password Hashing Algorithm in /etc/login.defs
  - class: rule_ref
    idref: set_password_hashing_algorithm_systemauth
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Set PAM\'s Password Hashing Algorithm
  - class: rule_ref
    idref: set_password_hashing_algorithm_libuserconf
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Set Password Hashing Algorithm in /etc/libuser.conf
---


## /description

The
system\'s default algorithm for storing password hashes in `/etc/shadow`
is SHA-512. This can be configured in several locations.
