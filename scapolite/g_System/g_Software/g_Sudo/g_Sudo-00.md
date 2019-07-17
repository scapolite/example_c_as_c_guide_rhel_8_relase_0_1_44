---
scapolite:
    class: group
    version: '0.51'
id: sudo
id_namespace: org.ssgproject.RHEL-8
title: Sudo
description: <see below>
contents:
  - class: rule_ref
    idref: sudo_remove_no_authenticate
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Ensure Users Re-Authenticate for Privilege Escalation - sud ...
  - class: rule_ref
    idref: sudo_vdsm_nopasswd
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Only the VDSM User Can Use sudo NOPASSWD
  - class: rule_ref
    idref: sudo_remove_nopasswd
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Ensure Users Re-Authenticate for Privilege Escalation - sud ...
  - class: rule_ref
    idref: sudo_require_authentication
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Ensure Users Re-Authenticate for Privilege Escalation - sud ...
---


## /description

`Sudo`,
which stands for \\\"su \'do\'\\\", provides the ability to delegate
authority to certain users, groups of users, or system administrators.
When configured for system users and/or groups, `Sudo` can allow a user
or group to execute privileged commands that normally only `root` is
allowed to execute.  
  
For more information on `Sudo` and addition `Sudo` configuration
options, see **<https://www.sudo.ws>**.
