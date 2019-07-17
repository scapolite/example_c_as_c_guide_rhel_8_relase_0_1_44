---
scapolite:
    class: group
    version: '0.51'
id: audit_execution_selinux_commands
id_namespace: org.ssgproject.RHEL-8
title: Record Execution Attempts to Run SELinux Privileged Commands
description: <see below>
contents:
  - class: rule_ref
    idref: audit_rules_execution_semanage
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Record Any Attempts to Run semanage
  - class: rule_ref
    idref: audit_rules_execution_seunshare
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Record Any Attempts to Run seunshare
  - class: rule_ref
    idref: audit_rules_execution_setfiles
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Record Any Attempts to Run setfiles
  - class: rule_ref
    idref: audit_rules_execution_restorecon
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Record Any Attempts to Run restorecon
  - class: rule_ref
    idref: audit_rules_execution_chcon
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Record Any Attempts to Run chcon
  - class: rule_ref
    idref: audit_rules_execution_setsebool
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Record Any Attempts to Run setsebool
---


## /description

At
a minimum, the audit system should collect the execution of SELinux
privileged commands for all users and root.
