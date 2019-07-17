---
scapolite:
    class: group
    version: '0.51'
id: password_storage
id_namespace: org.ssgproject.RHEL-8
title: Verify Proper Storage and Existence of Password Hashes
description: <see below>
contents:
  - class: rule_ref
    idref: no_empty_passwords
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Prevent Login to Accounts With Empty Password
  - class: rule_ref
    idref: gid_passwd_group_same
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: All GIDs referenced in /etc/passwd must be defined in /etc/ ...
  - class: rule_ref
    idref: accounts_password_all_shadowed
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Verify All Account Password Hashes are Shadowed
  - class: rule_ref
    idref: no_netrc_files
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Verify No netrc Files Exist
---


## /description

By
default, password hashes for local accounts are stored in the second
field (colon-separated) in `/etc/shadow`. This file should be readable
only by processes running with root credentials, preventing users from
casually accessing others\' password hashes and attempting to crack
them. However, it remains possible to misconfigure the system and store
password hashes in world-readable files such as `/etc/passwd`, or to
even store passwords themselves in plaintext on the system. Using
system-provided tools for password change/creation should allow
administrators to avoid such misconfiguration.
