---
scapolite:
    class: group
    version: '0.51'
id: auditd_configure_rules
id_namespace: org.ssgproject.RHEL-8
title: Configure auditd Rules for Comprehensive Auditing
description: <see below>
contents:
  - class: group_ref
    idref: audit_kernel_module_loading
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Record Information on Kernel Modules Loading and Unloading
  - class: group_ref
    idref: audit_unsuccessful_file_modification
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Record Unauthorized Access Attempts Events to Files (unsucc ...
  - class: group_ref
    idref: audit_execution_selinux_commands
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Record Execution Attempts to Run SELinux Privileged Command ...
  - class: group_ref
    idref: audit_login_events
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Record Attempts to Alter Logon and Logout Events
  - class: group_ref
    idref: audit_time_rules
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Records Events that Modify Date and Time Information
  - class: group_ref
    idref: audit_dac_actions
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Record Events that Modify the System\'s Discretionary Acces ...
  - class: group_ref
    idref: audit_file_deletion_events
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Record File Deletion Events by User
  - class: group_ref
    idref: audit_privileged_commands
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Record Information on the Use of Privileged Commands
  - class: rule_ref
    idref: audit_rules_networkconfig_modification
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Record Events that Modify the System\'s Network Environment
  - class: rule_ref
    idref: file_ownership_var_log_audit
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: System Audit Logs Must Be Owned By Root
  - class: rule_ref
    idref: audit_rules_immutable
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Make the auditd Configuration Immutable
  - class: rule_ref
    idref: audit_rules_etc_gshadow_open_by_handle_at
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: "Record Events that Modify User/Group Information via\r\nopen\\ ..."
  - class: rule_ref
    idref: audit_rules_etc_shadow_openat
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Record Events that Modify User/Group Information via openat ...
  - class: rule_ref
    idref: audit_rules_etc_gshadow_open
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Record Events that Modify User/Group Information via open s ...
  - class: rule_ref
    idref: audit_rules_etc_passwd_open
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Record Events that Modify User/Group Information via open s ...
  - class: rule_ref
    idref: audit_rules_session_events
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Record Attempts to Alter Process and Session Initiation Inf ...
  - class: rule_ref
    idref: directory_access_var_log_audit
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Record Access Events to Audit Log directory
  - class: rule_ref
    idref: audit_rules_etc_group_open
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Record Events that Modify User/Group Information via open s ...
  - class: rule_ref
    idref: audit_rules_etc_group_open_by_handle_at
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: "Record Events that Modify User/Group Information via\r\nopen\\ ..."
  - class: rule_ref
    idref: audit_rules_etc_shadow_open
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Record Events that Modify User/Group Information via open s ...
  - class: rule_ref
    idref: audit_rules_usergroup_modification_gshadow
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Record Events that Modify User/Group Information - /etc/gsh ...
  - class: rule_ref
    idref: audit_rules_etc_shadow_open_by_handle_at
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: "Record Events that Modify User/Group Information via\r\nopen\\ ..."
  - class: rule_ref
    idref: audit_rules_usergroup_modification_passwd
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Record Events that Modify User/Group Information - /etc/pas ...
  - class: rule_ref
    idref: file_permissions_var_log_audit
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: System Audit Logs Must Have Mode 0640 or Less Permissive
  - class: rule_ref
    idref: audit_rules_mac_modification
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Record Events that Modify the System\'s Mandatory Access Co ...
  - class: rule_ref
    idref: audit_rules_media_export
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Ensure auditd Collects Information on Exporting to Media (s ...
  - class: rule_ref
    idref: audit_rules_system_shutdown
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Shutdown System When Auditing Failures Occur
  - class: rule_ref
    idref: audit_rules_etc_group_openat
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Record Events that Modify User/Group Information via openat ...
  - class: rule_ref
    idref: audit_rules_etc_passwd_openat
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Record Events that Modify User/Group Information via openat ...
  - class: rule_ref
    idref: directory_permissions_var_log_audit
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: System Audit Logs Must Have Mode 0750 or Less Permissive
  - class: rule_ref
    idref: audit_rules_usergroup_modification_group
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Record Events that Modify User/Group Information - /etc/gro ...
  - class: rule_ref
    idref: audit_rules_usergroup_modification_opasswd
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Record Events that Modify User/Group Information - /etc/sec ...
  - class: rule_ref
    idref: audit_rules_etc_passwd_open_by_handle_at
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: "Record Events that Modify User/Group Information via\r\nopen\\ ..."
  - class: rule_ref
    idref: audit_rules_usergroup_modification_shadow
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Record Events that Modify User/Group Information - /etc/sha ...
  - class: rule_ref
    idref: audit_rules_sysadmin_actions
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Ensure auditd Collects System Administrator Actions
  - class: rule_ref
    idref: audit_rules_usergroup_modification
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Record Events that Modify User/Group Information
  - class: rule_ref
    idref: audit_rules_etc_gshadow_openat
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Record Events that Modify User/Group Information via openat ...
---


## /description

The
`auditd` program can perform comprehensive monitoring of system
activity. This section describes recommended configuration settings for
comprehensive auditing, but a full description of the auditing system\'s
capabilities is beyond the scope of this guide. The mailing list
*linux-audit\@redhat.com* exists to facilitate community discussion of
the auditing system.  
  
The audit subsystem supports extensive collection of events,
including:  

-   Tracing of arbitrary system calls (identified by name or number) on
    entry or exit.
-   Filtering by PID, UID, call success, system call argument (with some
    limitations), etc.
-   Monitoring of specific files for modifications to the file\'s
    contents or metadata.

  
Auditing rules at startup are controlled by the file
`/etc/audit/audit.rules`. Add rules to it to meet the auditing
requirements for your organization. Each line in
`/etc/audit/audit.rules` represents a series of arguments that can be
passed to `auditctl` and can be individually tested during runtime. See
documentation in `/usr/share/doc/audit-VERSION` and in the related man
pages for more details.  
  
If copying any example audit rulesets from
`/usr/share/doc/audit-VERSION`, be sure to comment out the lines
containing `arch=` which are not appropriate for your system\'s
architecture. Then review and understand the following rules, ensuring
rules are activated as needed for the appropriate architecture.  
  
After reviewing all the rules, reading the following sections, and
editing as needed, the new rules can be activated as follows:

``` 
$ sudo service auditd restart
```
