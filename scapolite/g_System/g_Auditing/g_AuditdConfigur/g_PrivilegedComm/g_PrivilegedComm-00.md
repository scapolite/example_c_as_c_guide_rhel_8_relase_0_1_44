---
scapolite:
    class: group
    version: '0.51'
id: audit_privileged_commands
id_namespace: org.ssgproject.RHEL-8
title: Record Information on the Use of Privileged Commands
description: <see below>
contents:
  - class: rule_ref
    idref: audit_rules_privileged_commands_umount
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Ensure auditd Collects Information on the Use of Privileged ...
  - class: rule_ref
    idref: audit_rules_privileged_commands_gpasswd
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Ensure auditd Collects Information on the Use of Privileged ...
  - class: rule_ref
    idref: audit_rules_privileged_commands_newgidmap
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Ensure auditd Collects Information on the Use of Privileged ...
  - class: rule_ref
    idref: audit_rules_privileged_commands_postdrop
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Ensure auditd Collects Information on the Use of Privileged ...
  - class: rule_ref
    idref: audit_rules_privileged_commands_unix_chkpwd
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Ensure auditd Collects Information on the Use of Privileged ...
  - class: rule_ref
    idref: audit_rules_privileged_commands_sudo
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Ensure auditd Collects Information on the Use of Privileged ...
  - class: rule_ref
    idref: audit_rules_privileged_commands_pam_timestamp_check
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Ensure auditd Collects Information on the Use of Privileged ...
  - class: rule_ref
    idref: audit_rules_privileged_commands_passwd
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Ensure auditd Collects Information on the Use of Privileged ...
  - class: rule_ref
    idref: audit_rules_privileged_commands_pt_chown
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Ensure auditd Collects Information on the Use of Privileged ...
  - class: rule_ref
    idref: audit_rules_privileged_commands_mount
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Ensure auditd Collects Information on the Use of Privileged ...
  - class: rule_ref
    idref: audit_rules_privileged_commands_newgrp
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Ensure auditd Collects Information on the Use of Privileged ...
  - class: rule_ref
    idref: audit_rules_privileged_commands
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Ensure auditd Collects Information on the Use of Privileged ...
  - class: rule_ref
    idref: audit_rules_privileged_commands_newuidmap
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Ensure auditd Collects Information on the Use of Privileged ...
  - class: rule_ref
    idref: audit_rules_privileged_commands_postqueue
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Ensure auditd Collects Information on the Use of Privileged ...
  - class: rule_ref
    idref: audit_rules_privileged_commands_su
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Ensure auditd Collects Information on the Use of Privileged ...
  - class: rule_ref
    idref: audit_rules_privileged_commands_userhelper
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Ensure auditd Collects Information on the Use of Privileged ...
  - class: rule_ref
    idref: audit_rules_privileged_commands_chsh
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Ensure auditd Collects Information on the Use of Privileged ...
  - class: rule_ref
    idref: audit_rules_privileged_commands_usernetctl
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Ensure auditd Collects Information on the Use of Privileged ...
  - class: rule_ref
    idref: audit_rules_privileged_commands_sudoedit
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Ensure auditd Collects Information on the Use of Privileged ...
  - class: rule_ref
    idref: audit_rules_privileged_commands_ssh_keysign
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Ensure auditd Collects Information on the Use of Privileged ...
  - class: rule_ref
    idref: audit_rules_privileged_commands_chage
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Ensure auditd Collects Information on the Use of Privileged ...
  - class: rule_ref
    idref: audit_rules_privileged_commands_at
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Ensure auditd Collects Information on the Use of Privileged ...
  - class: rule_ref
    idref: audit_rules_privileged_commands_crontab
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Ensure auditd Collects Information on the Use of Privileged ...
---


## /description

At
a minimum, the audit system should collect the execution of privileged
commands for all users and root.
