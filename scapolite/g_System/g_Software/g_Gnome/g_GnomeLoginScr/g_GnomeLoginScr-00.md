---
scapolite:
    class: group
    version: '0.51'
id: gnome_login_screen
id_namespace: org.ssgproject.RHEL-8
title: Configure GNOME Login Screen
description: <see below>
contents:
  - class: rule_ref
    idref: dconf_gnome_login_retries
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Set the GNOME3 Login Number of Failures
  - class: rule_ref
    idref: gconf_gdm_disable_user_list
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Disable the User List
  - class: rule_ref
    idref: gconf_gnome_disable_restart_shutdown
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Disable the GNOME Login Restart and Shutdown Buttons
  - class: rule_ref
    idref: gnome_gdm_disable_guest_login
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Disable GDM Guest Login
  - class: rule_ref
    idref: dconf_gnome_enable_smartcard_auth
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Enable the GNOME3 Login Smartcard Authentication
  - class: rule_ref
    idref: dconf_gnome_disable_restart_shutdown
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Disable the GNOME3 Login Restart and Shutdown Buttons
  - class: rule_ref
    idref: dconf_gnome_disable_user_list
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Disable the GNOME3 Login User List
  - class: rule_ref
    idref: gnome_gdm_disable_automatic_login
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Disable GDM Automatic Login
---


## /description

In
the default GNOME desktop, the login is displayed after system boot and
can display user accounts, allow users to reboot the system, and allow
users to login automatically and/or with a guest account. The login
screen should be configured to prevent such behavior.  
  
For more information about enforcing preferences in the GNOME3
environment using the DConf configuration system, see
**<https://access.redhat.com/documentation/en-US/Red_Hat_Enterprise_Linux/7/html/Desktop_Migration_and_Administration_Guide/index.html>/\>**
and the man page `dconf(1)`.
