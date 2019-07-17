---
scapolite:
    class: group
    version: '0.51'
id: accounts-pam
id_namespace: org.ssgproject.RHEL-8
title: Protect Accounts by Configuring PAM
description: <see below>
values:
  - id: var_password_pam_unix_remember
    id_namespace: org.ssgproject.RHEL-8
    title: remember
    description: |
        The
        last n passwords for each user are saved in `/etc/security/opasswd` in
        order to force password change history and keep the user from
        alternating between the same password too frequently.
    type: number
    default: '5'
    definitions:
      - selector: '0'
        value: 0
      - selector: '10'
        value: 10
      - selector: '24'
        value: 24
      - selector: '4'
        value: 4
      - selector: '5'
        value: 5
contents:
  - class: group_ref
    idref: locking_out_password_attempts
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Set Lockouts for Failed Password Attempts
  - class: group_ref
    idref: set_password_hashing_algorithm
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Set Password Hashing Algorithm
  - class: group_ref
    idref: password_quality
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Set Password Quality Requirements
  - class: rule_ref
    idref: display_login_attempts
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Ensure PAM Displays Last Logon/Access Notification
---


## /description

PAM,
or Pluggable Authentication Modules, is a system which implements
modular authentication for Linux programs. PAM provides a flexible and
configurable architecture for authentication, and it should be
configured to minimize exposure to unnecessary risk. This section
contains guidance on how to accomplish that.  
  
PAM is implemented as a set of shared objects which are loaded and
invoked whenever an application wishes to authenticate a user.
Typically, the application must be running as root in order to take
advantage of PAM, because PAM\'s modules often need to be able to access
sensitive stores of account information, such as /etc/shadow.
Traditional privileged network listeners (e.g. sshd) or SUID programs
(e.g. sudo) already meet this requirement. An SUID root application,
userhelper, is provided so that programs which are not SUID or
privileged themselves can still take advantage of PAM.  
  
PAM looks in the directory `/etc/pam.d` for application-specific
configuration information. For instance, if the program login attempts
to authenticate a user, then PAM\'s libraries follow the instructions in
the file `/etc/pam.d/login` to determine what actions should be taken.  
  
One very important file in `/etc/pam.d` is `/etc/pam.d/system-auth`.
This file, which is included by many other PAM configuration files,
defines \'default\' system authentication measures. Modifying this file
is a good way to make far-reaching authentication changes, for instance
when implementing a centralized authentication service.
