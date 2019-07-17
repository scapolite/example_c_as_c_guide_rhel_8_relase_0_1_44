---
scapolite:
    class: group
    version: '0.51'
id: permissions_within_important_dirs
id_namespace: org.ssgproject.RHEL-8
title: Verify File Permissions Within Some Important Directories
description: <see below>
contents:
  - class: rule_ref
    idref: file_permissions_library_dirs
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Verify that Shared Library Files Have Restrictive Permissio ...
  - class: rule_ref
    idref: file_ownership_library_dirs
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Verify that Shared Library Files Have Root Ownership
  - class: rule_ref
    idref: file_permissions_binary_dirs
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Verify that System Executables Have Restrictive Permissions
  - class: rule_ref
    idref: file_ownership_binary_dirs
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Verify that System Executables Have Root Ownership
---


## /description

Some
directories contain files whose confidentiality or integrity is notably
important and may also be susceptible to misconfiguration over time,
particularly if unpackaged software is installed. As such, an argument
exists to verify that files\' permissions within these directories
remain configured correctly and restrictively.
