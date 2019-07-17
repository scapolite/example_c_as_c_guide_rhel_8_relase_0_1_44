---
scapolite:
    class: group
    version: '0.51'
id: user_umask
id_namespace: org.ssgproject.RHEL-8
title: Ensure that Users Have Sensible Umask Values
description: <see below>
values:
  - id: var_accounts_user_umask
    id_namespace: org.ssgproject.RHEL-8
    title: Sensible umask
    description: |
        Enter
        default user umask
    type: string
    default: '027'
    definitions:
      - selector: '007'
        value: 7
      - selector: '022'
        value: 22
      - selector: '027'
        value: 27
      - selector: '077'
        value: 77
contents:
  - class: rule_ref
    idref: accounts_umask_etc_profile
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Ensure the Default Umask is Set Correctly in /etc/profile
  - class: rule_ref
    idref: accounts_umask_interactive_users
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Ensure the Default Umask is Set Correctly For Interactive U ...
  - class: rule_ref
    idref: accounts_umask_etc_csh_cshrc
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Ensure the Default C Shell Umask is Set Correctly
  - class: rule_ref
    idref: accounts_umask_etc_login_defs
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Ensure the Default Umask is Set Correctly in login.defs
  - class: rule_ref
    idref: accounts_umask_etc_bashrc
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Ensure the Default Bash Umask is Set Correctly
---


## /description

The
umask setting controls the default permissions for the creation of new
files. With a default `umask` setting of 077, files and directories
created by users will not be readable by any other user on the system.
Users who wish to make specific files group- or world-readable can
accomplish this by using the chmod command. Additionally, users can make
all their files readable to their group by default by setting a `umask`
of 027 in their shell configuration files. If default per-user groups
exist (that is, if every user has a default group whose name is the same
as that user\'s username and whose only member is the user), then it may
even be safe for users to select a `umask` of 007, making it very easy
to intentionally share files with groups of which the user is a
member.
