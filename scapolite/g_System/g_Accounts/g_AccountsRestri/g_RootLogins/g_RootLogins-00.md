---
scapolite:
    class: group
    version: '0.51'
id: root_logins
id_namespace: org.ssgproject.RHEL-8
title: Restrict Root Logins
description: <see below>
contents:
  - class: rule_ref
    idref: no_password_auth_for_systemaccounts
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Ensure that System Accounts Are Locked
  - class: rule_ref
    idref: no_root_webbrowsing
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Restrict Web Browser Use for Administrative Accounts
  - class: rule_ref
    idref: securetty_root_login_console_only
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Restrict Virtual Console Root Logins
  - class: rule_ref
    idref: restrict_serial_port_logins
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Restrict Serial Port Root Logins
  - class: rule_ref
    idref: root_path_default
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Root Path Must Be Vendor Default
  - class: rule_ref
    idref: accounts_no_uid_except_zero
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Verify Only Root Has UID 0
  - class: rule_ref
    idref: no_shelllogin_for_systemaccounts
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Ensure that System Accounts Do Not Run a Shell Upon Login
  - class: rule_ref
    idref: no_direct_root_logins
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Direct root Logins Not Allowed
---


## /description

Direct
root logins should be allowed only for emergency use. In normal
situations, the administrator should access the system via a unique
unprivileged account, and then use `su` or `sudo` to execute privileged
commands. Discouraging administrators from accessing the root account
directly ensures an audit trail in organizations with multiple
administrators. Locking down the channels through which root can connect
directly also reduces opportunities for password-guessing against the
root account. The `login` program uses the file `/etc/securetty` to
determine which interfaces should allow root logins. The virtual devices
`/dev/console` and `/dev/tty*` represent the system consoles (accessible
via the Ctrl-Alt-F1 through Ctrl-Alt-F6 keyboard sequences on a default
installation). The default securetty file also contains `/dev/vc/*`.
These are likely to be deprecated in most environments, but may be
retained for compatibility. Root should also be prohibited from
connecting via network protocols. Other sections of this document
include guidance describing how to prevent root from logging in via SSH.
