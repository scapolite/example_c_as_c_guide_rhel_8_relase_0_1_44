---
scapolite:
    class: group
    version: '0.51'
id: ssh_server
id_namespace: org.ssgproject.RHEL-8
title: Configure OpenSSH Server if Necessary
description: <see below>
contents:
  - class: group_ref
    idref: sshd_strengthen_firewall
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Strengthen Firewall Configuration if Possible
  - class: rule_ref
    idref: sshd_disable_user_known_hosts
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Disable SSH Support for User Known Hosts
  - class: rule_ref
    idref: sshd_set_loglevel_info
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Set LogLevel to INFO
  - class: rule_ref
    idref: sshd_enable_warning_banner
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Enable SSH Warning Banner
  - class: rule_ref
    idref: firewalld_sshd_port_enabled
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Enable SSH Server firewalld Firewall Exception
  - class: rule_ref
    idref: sshd_use_priv_separation
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Enable Use of Privilege Separation
  - class: rule_ref
    idref: sshd_do_not_permit_user_env
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Do Not Allow SSH Environment Options
  - class: rule_ref
    idref: sshd_enable_x11_forwarding
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Enable Encrypted X11 Forwarding
  - class: rule_ref
    idref: sshd_limit_user_access
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Limit Users\' SSH Access
  - class: rule_ref
    idref: sshd_disable_kerb_auth
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Disable Kerberos Authentication
  - class: rule_ref
    idref: sshd_disable_root_login
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Disable SSH Root Login
  - class: rule_ref
    idref: sshd_disable_gssapi_auth
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Disable GSSAPI Authentication
  - class: rule_ref
    idref: sshd_disable_compression
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Disable Compression Or Set Compression to delayed
  - class: rule_ref
    idref: sshd_print_last_log
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Enable SSH Print Last Log
  - class: rule_ref
    idref: sshd_disable_rhosts
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Disable SSH Support for .rhosts Files
  - class: rule_ref
    idref: sshd_disable_empty_passwords
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Disable SSH Access via Empty Passwords
  - class: rule_ref
    idref: sshd_set_idle_timeout
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Set SSH Idle Timeout Interval
  - class: rule_ref
    idref: sshd_allow_only_protocol2
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Allow Only SSH Protocol 2
  - class: rule_ref
    idref: sshd_set_keepalive
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Set SSH Client Alive Max Count
  - class: rule_ref
    idref: sshd_set_max_auth_tries
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Set SSH authentication attempt limit
  - class: rule_ref
    idref: sshd_disable_rhosts_rsa
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Disable SSH Support for Rhosts RSA Authentication
  - class: rule_ref
    idref: disable_host_auth
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Disable Host-Based Authentication
  - class: rule_ref
    idref: sshd_enable_strictmodes
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Enable Use of Strict Mode Checking
---


## /description

If
the system needs to act as an SSH server, then certain changes should be
made to the OpenSSH daemon configuration file `/etc/ssh/sshd_config`.
The following recommendations can be applied to this file. See the
`sshd_config(5)` man page for more detailed information.
