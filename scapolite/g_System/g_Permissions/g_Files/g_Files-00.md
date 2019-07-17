---
scapolite:
    class: group
    version: '0.51'
id: files
id_namespace: org.ssgproject.RHEL-8
title: Verify Permissions on Important Files and Directories
description: <see below>
contents:
  - class: group_ref
    idref: permissions_within_important_dirs
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Verify File Permissions Within Some Important Directories
  - class: group_ref
    idref: permissions_important_account_files
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Verify Permissions on Files with Local Account Information  ...
  - class: rule_ref
    idref: file_permissions_ungroupowned
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Ensure All Files Are Owned by a Group
  - class: rule_ref
    idref: sysctl_fs_protected_hardlinks
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Disallow creating hardlinks to a file you not own
  - class: rule_ref
    idref: file_permissions_unauthorized_suid
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Ensure All SUID Executables Are Authorized
  - class: rule_ref
    idref: dir_perms_world_writable_sticky_bits
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Verify that All World-Writable Directories Have Sticky Bits ...
  - class: rule_ref
    idref: no_files_unowned_by_user
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Ensure All Files Are Owned by a User
  - class: rule_ref
    idref: file_permissions_unauthorized_sgid
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Ensure All SGID Executables Are Authorized
  - class: rule_ref
    idref: dir_perms_world_writable_system_owned
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Ensure All World-Writable Directories Are Owned by a System ...
  - class: rule_ref
    idref: file_permissions_unauthorized_world_writable
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Ensure No World-Writable Files Exist
  - class: rule_ref
    idref: file_permissions_systemmap
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Verify that local System.map file (if exists) is readable o ...
  - class: rule_ref
    idref: sysctl_fs_protected_symlinks
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Disallow creating symlinks to a file you not own
---


## /description

Permissions
for many files on a system must be set restrictively to ensure sensitive
information is properly protected. This section discusses important
permission restrictions which can be verified to ensure that no harmful
discrepancies have arisen.
