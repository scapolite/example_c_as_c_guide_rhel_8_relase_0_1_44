---
scapolite:
    class: group
    version: '0.51'
id: audit_kernel_module_loading
id_namespace: org.ssgproject.RHEL-8
title: Record Information on Kernel Modules Loading and Unloading
description: <see below>
contents:
  - class: rule_ref
    idref: audit_rules_kernel_module_loading_modprobe
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Ensure auditd Collects Information on Kernel Module Loading ...
  - class: rule_ref
    idref: audit_rules_kernel_module_loading_init
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Ensure auditd Collects Information on Kernel Module Loading ...
  - class: rule_ref
    idref: audit_rules_kernel_module_loading_delete
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Ensure auditd Collects Information on Kernel Module Unloadi ...
  - class: rule_ref
    idref: audit_rules_kernel_module_loading
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Ensure auditd Collects Information on Kernel Module Loading ...
  - class: rule_ref
    idref: audit_rules_kernel_module_loading_insmod
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Ensure auditd Collects Information on Kernel Module Loading ...
  - class: rule_ref
    idref: audit_rules_kernel_module_loading_rmmod
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Ensure auditd Collects Information on Kernel Module Unloadi ...
  - class: rule_ref
    idref: audit_rules_kernel_module_loading_finit
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Ensure auditd Collects Information on Kernel Module Loading ...
  - class: rule_ref
    idref: audit_rules_kernel_module_loading_create
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Ensure auditd Collects Information on Kernel Module Loading ...
---


## /description

To
capture kernel module loading and unloading events, use following lines,
setting ARCH to either b32 for 32-bit system, or having two lines for
both b32 and b64 in case your system is 64-bit:

``` 
-w /usr/sbin/insmod -p x -k modules
-w /usr/sbin/rmmod -p x -k modules
-w /usr/sbin/modprobe -p x -k modules
-a always,exit -F arch=ARCH -S init_module,delete_module -F key=modules
```

Place to add the lines depends on a way `auditd` daemon is configured.
If it is configured to use the `augenrules` program (the default), add
the lines to a file with suffix `.rules` in the directory
`/etc/audit/rules.d`. If the `auditd` daemon is configured to use the
`auditctl` utility, add the lines to file `/etc/audit/audit.rules`.
