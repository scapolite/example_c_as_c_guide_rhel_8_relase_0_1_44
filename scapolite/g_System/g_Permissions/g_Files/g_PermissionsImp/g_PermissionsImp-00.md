---
scapolite:
    class: group
    version: '0.51'
id: permissions_important_account_files
id_namespace: org.ssgproject.RHEL-8
title: |
    Verify Permissions on Files with Local Account Information and
    Credentials
description: <see below>
contents:
  - class: rule_ref
    idref: file_owner_etc_gshadow
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Verify User Who Owns gshadow File
  - class: rule_ref
    idref: file_permissions_etc_gshadow
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Verify Permissions on gshadow File
  - class: rule_ref
    idref: file_owner_etc_group
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Verify User Who Owns group File
  - class: rule_ref
    idref: file_groupowner_etc_group
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Verify Group Who Owns group File
  - class: rule_ref
    idref: file_groupowner_etc_shadow
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Verify Group Who Owns shadow File
  - class: rule_ref
    idref: file_permissions_etc_passwd
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Verify Permissions on passwd File
  - class: rule_ref
    idref: file_owner_etc_passwd
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Verify User Who Owns passwd File
  - class: rule_ref
    idref: file_permissions_etc_shadow
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Verify Permissions on shadow File
  - class: rule_ref
    idref: file_groupowner_etc_passwd
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Verify Group Who Owns passwd File
  - class: rule_ref
    idref: file_permissions_etc_group
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Verify Permissions on group File
  - class: rule_ref
    idref: file_groupowner_etc_gshadow
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Verify Group Who Owns gshadow File
  - class: rule_ref
    idref: file_owner_etc_shadow
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Verify User Who Owns shadow File
---


## /description

The
default restrictive permissions for files which act as important
security databases such as `passwd`, `shadow`, `group`, and `gshadow`
files must be maintained. Many utilities need read access to the
`passwd` file in order to function properly, but read access to the
`shadow` file allows malicious attacks against system passwords, and
should never be enabled.
