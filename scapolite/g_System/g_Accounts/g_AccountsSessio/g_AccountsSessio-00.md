---
scapolite:
    class: group
    version: '0.51'
id: accounts-session
id_namespace: org.ssgproject.RHEL-8
title: Secure Session Configuration Files for Login Accounts
description: <see below>
values:
  - id: var_accounts_fail_delay
    id_namespace: org.ssgproject.RHEL-8
    title: Maximum login attempts delay
    description: |
        Maximum
        time in seconds between fail login attempts before re-prompting.
    type: number
    default: '4'
    definitions:
      - selector: '1'
        value: 1
      - selector: '2'
        value: 2
      - selector: '3'
        value: 3
      - selector: '4'
        value: 4
      - selector: '5'
        value: 5
  - id: var_accounts_max_concurrent_login_sessions
    id_namespace: org.ssgproject.RHEL-8
    title: Maximum concurrent login sessions
    description: |
        Maximum
        number of concurrent sessions by a user
    type: number
    default: '1'
    definitions:
      - selector: '1'
        value: 1
      - selector: '10'
        value: 10
      - selector: '15'
        value: 15
      - selector: '20'
        value: 20
      - selector: '3'
        value: 3
      - selector: '5'
        value: 5
  - id: var_accounts_tmout
    id_namespace: org.ssgproject.RHEL-8
    title: Account Inactivity Timeout (minutes)
    description: |
        In
        an interactive shell, the value is interpreted as the number of seconds
        to wait for input after issueing the primary prompt. Bash terminates
        after waiting for that number of seconds if input does not arrive.
    type: number
    default: 10_min
    definitions:
      - selector: 30_min
        value: 1800
      - selector: 10_min
        value: 600
      - selector: 15_min
        value: 900
      - selector: 5_min
        value: 300
contents:
  - class: group_ref
    idref: root_paths
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Ensure that No Dangerous Directories Exist in Root\'s Path
  - class: group_ref
    idref: user_umask
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Ensure that Users Have Sensible Umask Values
  - class: rule_ref
    idref: accounts_user_dot_user_ownership
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: User Initialization Files Must Be Owned By the Primary User
  - class: rule_ref
    idref: file_ownership_home_directories
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: All Interactive User Home Directories Must Be Owned By The  ...
  - class: rule_ref
    idref: file_permissions_home_directories
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: All Interactive User Home Directories Must Have mode 0750 O ...
  - class: rule_ref
    idref: accounts_have_homedir_login_defs
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Ensure Home Directories are Created for New Users
  - class: rule_ref
    idref: accounts_logon_fail_delay
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Ensure the Logon Failure Delay is Set Correctly in login.de ...
  - class: rule_ref
    idref: accounts_user_interactive_home_directory_exists
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: All Interactive Users Home Directories Must Exist
  - class: rule_ref
    idref: accounts_users_home_files_groupownership
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: All User Files and Directories In The Home Directory Must B ...
  - class: rule_ref
    idref: accounts_user_dot_no_world_writable_programs
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: User Initialization Files Must Not Run World-Writable Progr ...
  - class: rule_ref
    idref: accounts_tmout
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Set Interactive Session Timeout
  - class: rule_ref
    idref: accounts_users_home_files_ownership
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: All User Files and Directories In The Home Directory Must B ...
  - class: rule_ref
    idref: file_groupownership_home_directories
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: All Interactive User Home Directories Must Be Group-Owned B ...
  - class: rule_ref
    idref: accounts_user_dot_group_ownership
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: User Initialization Files Must Be Group-Owned By The Primar ...
  - class: rule_ref
    idref: accounts_user_interactive_home_directory_defined
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: All Interactive Users Must Have A Home Directory Defined
  - class: rule_ref
    idref: accounts_max_concurrent_login_sessions
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Limit the Number of Concurrent Login Sessions Allowed Per U ...
  - class: rule_ref
    idref: accounts_users_home_files_permissions
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: All User Files and Directories In The Home Directory Must H ...
  - class: rule_ref
    idref: file_permissions_home_dirs
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Ensure that User Home Directories are not Group-Writable or ...
  - class: rule_ref
    idref: file_permission_user_init_files
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Ensure All User Initialization Files Have Mode 0740 Or Less ...
  - class: rule_ref
    idref: accounts_user_home_paths_only
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Ensure that Users Path Contains Only Local Directories
---


## /description

When
a user logs into a Unix account, the system configures the user\'s
session by reading a number of files. Many of these files are located in
the user\'s home directory, and may have weak permissions as a result of
user error or misconfiguration. If an attacker can modify or even read
certain types of account configuration information, they can often gain
full access to the affected user\'s account. Therefore, it is important
to test and correct configuration file permissions for interactive
accounts, particularly those of privileged users such as root or system
administrators.
