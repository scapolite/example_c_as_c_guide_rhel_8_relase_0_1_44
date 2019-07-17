---
scapolite:
    class: group
    version: '0.51'
id: password_quality
id_namespace: org.ssgproject.RHEL-8
title: Set Password Quality Requirements
description: <see below>
contents:
  - class: group_ref
    idref: password_quality_pwquality
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Set Password Quality Requirements with pam\_pwquality
  - class: group_ref
    idref: password_quality_pamcracklib
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Set Password Quality Requirements, if using pam\_cracklib
---


## /description

The
default `pam_pwquality` PAM module provides strength checking for
passwords. It performs a number of checks, such as making sure passwords
are not similar to dictionary words, are of at least a certain length,
are not the previous password reversed, and are not simply a change of
case from the previous password. It can also require passwords to be in
certain character classes. The `pam_pwquality` module is the preferred
way of configuring password requirements.  
  
The `pam_cracklib` PAM module can also provide strength checking for
passwords as the `pam_pwquality` module. It performs a number of checks,
such as making sure passwords are not similar to dictionary words, are
of at least a certain length, are not the previous password reversed,
and are not simply a change of case from the previous password. It can
also require passwords to be in certain character classes.  
  
The man pages `pam_pwquality(8)` and `pam_cracklib(8)` provide
information on the capabilities and configuration of each.
