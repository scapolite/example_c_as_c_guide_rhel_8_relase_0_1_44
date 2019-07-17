---
scapolite:
    class: group
    version: '0.51'
id: audit_dac_actions
id_namespace: org.ssgproject.RHEL-8
title: Record Events that Modify the System\'s Discretionary Access Controls
description: <see below>
contents:
  - class: rule_ref
    idref: audit_rules_dac_modification_lsetxattr
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Record Events that Modify the System\'s Discretionary Acces ...
  - class: rule_ref
    idref: audit_rules_dac_modification_fchmod
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Record Events that Modify the System\'s Discretionary Acces ...
  - class: rule_ref
    idref: audit_rules_dac_modification_fchown
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Record Events that Modify the System\'s Discretionary Acces ...
  - class: rule_ref
    idref: audit_rules_dac_modification_fremovexattr
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Record Events that Modify the System\'s Discretionary Acces ...
  - class: rule_ref
    idref: audit_rules_dac_modification_fsetxattr
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Record Events that Modify the System\'s Discretionary Acces ...
  - class: rule_ref
    idref: audit_rules_dac_modification_removexattr
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Record Events that Modify the System\'s Discretionary Acces ...
  - class: rule_ref
    idref: audit_rules_dac_modification_setxattr
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Record Events that Modify the System\'s Discretionary Acces ...
  - class: rule_ref
    idref: audit_rules_dac_modification_lchown
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Record Events that Modify the System\'s Discretionary Acces ...
  - class: rule_ref
    idref: audit_rules_dac_modification_chown
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Record Events that Modify the System\'s Discretionary Acces ...
  - class: rule_ref
    idref: audit_rules_dac_modification_chmod
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Record Events that Modify the System\'s Discretionary Acces ...
  - class: rule_ref
    idref: audit_rules_dac_modification_lremovexattr
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Record Events that Modify the System\'s Discretionary Acces ...
  - class: rule_ref
    idref: audit_rules_dac_modification_fchmodat
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Record Events that Modify the System\'s Discretionary Acces ...
  - class: rule_ref
    idref: audit_rules_dac_modification_fchownat
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Record Events that Modify the System\'s Discretionary Acces ...
---


## /description

At
a minimum, the audit system should collect file permission changes for
all users and root. Note that the \"-F arch=b32\" lines should be
present even on a 64 bit system. These commands identify system calls
for auditing. Even if the system is 64 bit it can still execute 32 bit
system calls. Additionally, these rules can be configured in a number of
ways while still achieving the desired effect. An example of this is
that the \"-S\" calls could be split up and placed on separate lines,
however, this is less efficient. Add the following to
`/etc/audit/audit.rules`:

``` 
-a always,exit -F arch=b32 -S chmod,fchmod,fchmodat -F auid>=1000 -F auid!=unset -F key=perm_mod
    -a always,exit -F arch=b32 -S chown,fchown,fchownat,lchown -F auid>=1000 -F auid!=unset -F key=perm_mod
    -a always,exit -F arch=b32 -S setxattr,lsetxattr,fsetxattr,removexattr,lremovexattr,fremovexattr -F auid>=1000 -F auid!=unset -F key=perm_mod
```

If your system is 64 bit then these lines should be duplicated and the
arch=b32 replaced with arch=b64 as follows:

``` 
-a always,exit -F arch=b64 -S chmod,fchmod,fchmodat -F auid>=1000 -F auid!=unset -F key=perm_mod
    -a always,exit -F arch=b64 -S chown,fchown,fchownat,lchown -F auid>=1000 -F auid!=unset -F key=perm_mod
    -a always,exit -F arch=b64 -S setxattr,lsetxattr,fsetxattr,removexattr,lremovexattr,fremovexattr -F auid>=1000 -F auid!=unset -F key=perm_mod
```
