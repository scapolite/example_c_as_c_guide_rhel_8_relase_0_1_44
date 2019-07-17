---
scapolite:
    class: group
    version: '0.51'
id: locking_out_password_attempts
id_namespace: org.ssgproject.RHEL-8
title: Set Lockouts for Failed Password Attempts
description: <see below>
contents:
  - class: rule_ref
    idref: accounts_passwords_pam_faillock_unlock_time
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Set Lockout Time for Failed Password Attempts
  - class: rule_ref
    idref: accounts_password_pam_unix_remember
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Limit Password Reuse
  - class: rule_ref
    idref: accounts_passwords_pam_faillock_deny
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Set Deny For Failed Password Attempts
  - class: rule_ref
    idref: accounts_passwords_pam_faillock_deny_root
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Configure the root Account for Failed Password Attempts
  - class: rule_ref
    idref: accounts_passwords_pam_faillock_interval
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Set Interval For Counting Failed Password Attempts
---


## /description

The
`pam_faillock` PAM module provides the capability to lock out user
accounts after a number of failed login attempts. Its documentation is
available in `/usr/share/doc/pam-VERSION/txts/README.pam_faillock`.
