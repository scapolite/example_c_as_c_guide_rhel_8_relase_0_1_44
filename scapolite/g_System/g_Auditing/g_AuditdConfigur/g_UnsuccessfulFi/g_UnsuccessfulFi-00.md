---
scapolite:
    class: group
    version: '0.51'
id: audit_unsuccessful_file_modification
id_namespace: org.ssgproject.RHEL-8
title: Record Unauthorized Access Attempts Events to Files (unsuccessful)
description: <see below>
contents:
  - class: rule_ref
    idref: audit_rules_unsuccessful_file_modification_chmod
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Record Unsuccessul Permission Changes to Files - chmod
  - class: rule_ref
    idref: audit_rules_unsuccessful_file_modification_chown
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Record Unsuccessul Ownership Changes to Files - chown
  - class: rule_ref
    idref: audit_rules_unsuccessful_file_modification_removexattr
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Record Unsuccessul Permission Changes to Files - removexatt ...
  - class: rule_ref
    idref: audit_rules_unsuccessful_file_modification_ftruncate
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Record Unauthorized Access Attempts to Files (unsuccessful) ...
  - class: rule_ref
    idref: audit_rules_unsuccessful_file_modification_lchown
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Record Unsuccessul Ownership Changes to Files - lchown
  - class: rule_ref
    idref: audit_rules_unsuccessful_file_modification_fremovexattr
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Record Unsuccessul Permission Changes to Files - fremovexat ...
  - class: rule_ref
    idref: audit_rules_unsuccessful_file_modification_open_o_trunc_write
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Record Unauthorized Modification Attempts to Files - open O ...
  - class: rule_ref
    idref: audit_rules_unsuccessful_file_modification_fchown
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Record Unsuccessul Ownership Changes to Files - fchown
  - class: rule_ref
    idref: audit_rules_unsuccessful_file_modification_openat_o_trunc_write
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Record Unauthorized Modification Attempts to Files - openat ...
  - class: rule_ref
    idref: audit_rules_unsuccessful_file_modification_fsetxattr
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Record Unsuccessul Permission Changes to Files - fsetxattr
  - class: rule_ref
    idref: audit_rules_unsuccessful_file_modification_fchownat
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Record Unsuccessul Ownership Changes to Files - fchownat
  - class: rule_ref
    idref: audit_rules_unsuccessful_file_modification_open_by_handle_at_o_creat
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Record Unauthorized Creation Attempts to Files - open\_by\_ ...
  - class: rule_ref
    idref: audit_rules_unsuccessful_file_modification_creat
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Record Unauthorized Access Attempts to Files (unsuccessful) ...
  - class: rule_ref
    idref: audit_rules_unsuccessful_file_modification_open_o_creat
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Record Unauthorized Creation Attempts to Files - open O\_CR ...
  - class: rule_ref
    idref: audit_rules_unsuccessful_file_modification_setxattr
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Record Unsuccessul Permission Changes to Files - setxattr
  - class: rule_ref
    idref: audit_rules_unsuccessful_file_modification_openat_o_creat
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Record Unauthorized Creation Attempts to Files - openat O\_ ...
  - class: rule_ref
    idref: audit_rules_unsuccessful_file_modification_rename
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Record Unsuccessul Delete Attempts to Files - rename
  - class: rule_ref
    idref: audit_rules_unsuccessful_file_modification_truncate
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Record Unauthorized Access Attempts to Files (unsuccessful) ...
  - class: rule_ref
    idref: audit_rules_unsuccessful_file_modification_fchmodat
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Record Unsuccessul Permission Changes to Files - fchmodat
  - class: rule_ref
    idref: audit_rules_unsuccessful_file_modification
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Ensure auditd Collects Unauthorized Access Attempts to File ...
  - class: rule_ref
    idref: audit_rules_unsuccessful_file_modification_lsetxattr
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Record Unsuccessul Permission Changes to Files - lsetxattr
  - class: rule_ref
    idref: audit_rules_unsuccessful_file_modification_renameat
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Record Unsuccessul Delete Attempts to Files - renameat
  - class: rule_ref
    idref: audit_rules_unsuccessful_file_modification_open_by_handle_at_rule_order
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Ensure auditd Unauthorized Access Attempts To open\_by\_han ...
  - class: rule_ref
    idref: audit_rules_unsuccessful_file_modification_unlinkat
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Record Unsuccessul Delete Attempts to Files - unlinkat
  - class: rule_ref
    idref: audit_rules_unsuccessful_file_modification_open
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Record Unauthorized Access Attempts to Files (unsuccessful) ...
  - class: rule_ref
    idref: audit_rules_unsuccessful_file_modification_openat
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Record Unauthorized Access Attempts to Files (unsuccessful) ...
  - class: rule_ref
    idref: audit_rules_unsuccessful_file_modification_lremovexattr
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Record Unsuccessul Permission Changes to Files - lremovexat ...
  - class: rule_ref
    idref: audit_rules_unsuccessful_file_modification_fchmod
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Record Unsuccessul Permission Changes to Files - fchmod
  - class: rule_ref
    idref: audit_rules_unsuccessful_file_modification_unlink
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Record Unsuccessul Delete Attempts to Files - unlink
  - class: rule_ref
    idref: audit_rules_unsuccessful_file_modification_open_by_handle_at
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Record Unauthorized Access Attempts to Files (unsuccessful) ...
  - class: rule_ref
    idref: audit_rules_unsuccessful_file_modification_openat_rule_order
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Ensure auditd Rules For Unauthorized Attempts To openat Are ...
  - class: rule_ref
    idref: audit_rules_unsuccessful_file_modification_open_by_handle_at_o_trunc_write
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: "Record Unauthorized Modification Attempts to Files -\r\nopen\\ ..."
  - class: rule_ref
    idref: audit_rules_unsuccessful_file_modification_open_rule_order
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Ensure auditd Rules For Unauthorized Attempts To open Are O ...
---


## /description

At
a minimum, the audit system should collect unauthorized file accesses
for all users and root. Note that the \"-F arch=b32\" lines should be
present even on a 64 bit system. These commands identify system calls
for auditing. Even if the system is 64 bit it can still execute 32 bit
system calls. Additionally, these rules can be configured in a number of
ways while still achieving the desired effect. An example of this is
that the \"-S\" calls could be split up and placed on separate lines,
however, this is less efficient. Add the following to
`/etc/audit/audit.rules`:

``` 
-a always,exit -F arch=b32 -S creat,open,openat,open_by_handle_at,truncate,ftruncate -F exit=-EACCES -F auid>=1000 -F auid!=unset -F key=access
    -a always,exit -F arch=b32 -S creat,open,openat,open_by_handle_at,truncate,ftruncate -F exit=-EPERM -F auid>=1000 -F auid!=unset -F key=access
```

If your system is 64 bit then these lines should be duplicated and the
arch=b32 replaced with arch=b64 as follows:

``` 
-a always,exit -F arch=b64 -S creat,open,openat,open_by_handle_at,truncate,ftruncate -F exit=-EACCES -F auid>=1000 -F auid!=unset -F key=access
    -a always,exit -F arch=b64 -S creat,open,openat,open_by_handle_at,truncate,ftruncate -F exit=-EPERM -F auid>=1000 -F auid!=unset -F key=access
```
