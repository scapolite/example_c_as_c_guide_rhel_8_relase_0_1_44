---
scapolite:
    class: group
    version: '0.51'
id: gnome
id_namespace: org.ssgproject.RHEL-8
title: GNOME Desktop Environment
description: <see below>
contents:
  - class: group_ref
    idref: gnome_screen_locking
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Configure GNOME Screen Locking
  - class: group_ref
    idref: gnome_media_settings
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: GNOME Media Settings
  - class: group_ref
    idref: gnome_remote_access_settings
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: GNOME Remote Access Settings
  - class: group_ref
    idref: gnome_login_screen
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Configure GNOME Login Screen
  - class: group_ref
    idref: gnome_network_settings
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: GNOME Network Settings
  - class: group_ref
    idref: gnome_system_settings
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: GNOME System Settings
  - class: rule_ref
    idref: package_gdm_removed
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Remove the GDM Package Group
  - class: rule_ref
    idref: dconf_db_up_to_date
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Make sure that the dconf databases are up-to-date with rega ...
  - class: rule_ref
    idref: dconf_use_text_backend
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Force dconf to use the textfiles instead of a binary DB
  - class: rule_ref
    idref: enable_dconf_user_profile
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Configure GNOME3 DConf User Profile
---


## /description

GNOME
is a graphical desktop environment bundled with many Linux distributions
that allow users to easily interact with the operating system
graphically rather than textually. The GNOME Graphical Display Manager
(GDM) provides login, logout, and user switching contexts as well as
display server management.  
  
GNOME is developed by the GNOME Project and is considered the default
Red Hat Graphical environment.  
  
For more information on GNOME and the GNOME Project, see
**<https://www.gnome.org>**.
