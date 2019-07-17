---
scapolite:
    class: group
    version: '0.51'
id: audit_file_deletion_events
id_namespace: org.ssgproject.RHEL-8
title: Record File Deletion Events by User
description: <see below>
contents:
  - class: rule_ref
    idref: audit_rules_file_deletion_events
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Ensure auditd Collects File Deletion Events by User
  - class: rule_ref
    idref: audit_rules_file_deletion_events_unlink
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Ensure auditd Collects File Deletion Events by User - unlin ...
  - class: rule_ref
    idref: audit_rules_file_deletion_events_unlinkat
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Ensure auditd Collects File Deletion Events by User - unlin ...
  - class: rule_ref
    idref: audit_rules_file_deletion_events_rename
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Ensure auditd Collects File Deletion Events by User - renam ...
  - class: rule_ref
    idref: audit_rules_file_deletion_events_renameat
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Ensure auditd Collects File Deletion Events by User - renam ...
  - class: rule_ref
    idref: audit_rules_file_deletion_events_rmdir
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Ensure auditd Collects File Deletion Events by User - rmdir
---


## /description

At
a minimum, the audit system should collect file deletion events for all
users and root. If the `auditd` daemon is configured to use the
`augenrules` program to read audit rules during daemon startup (the
default), add the following line to a file with suffix `.rules` in the
directory `/etc/audit/rules.d`, setting ARCH to either b32 or b64 as
appropriate for your system:

``` 
-a always,exit -F arch=ARCH -S rmdir,unlink,unlinkat,rename,renameat -F auid>=1000 -F auid!=unset -F key=delete
```

If the `auditd` daemon is configured to use the `auditctl` utility to
read audit rules during daemon startup, add the following line to
`/etc/audit/audit.rules` file, setting ARCH to either b32 or b64 as
appropriate for your system:

``` 
-a always,exit -F arch=ARCH -S rmdir,unlink,unlinkat,rename,renameat -F auid>=1000 -F auid!=unset -F key=delete
```
