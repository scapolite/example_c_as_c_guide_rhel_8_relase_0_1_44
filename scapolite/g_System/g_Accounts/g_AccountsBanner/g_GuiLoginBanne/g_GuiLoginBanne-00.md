---
scapolite:
    class: group
    version: '0.51'
id: gui_login_banner
id_namespace: org.ssgproject.RHEL-8
title: Implement a GUI Warning Banner
description: <see below>
contents:
  - class: rule_ref
    idref: gconf_gdm_enable_warning_gui_banner
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Enable GUI Warning Banner
  - class: rule_ref
    idref: dconf_gnome_login_banner_text
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Set the GNOME3 Login Warning Banner Text
  - class: rule_ref
    idref: dconf_gnome_banner_enabled
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Enable GNOME3 Login Warning Banner
  - class: rule_ref
    idref: gconf_gdm_set_login_banner_text
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Set GUI Warning Banner Text
---


## /description

In
the default graphical environment, users logging directly into the
system are greeted with a login screen provided by the GNOME Display
Manager (GDM). The warning banner should be displayed in this graphical
environment for these users. The following sections describe how to
configure the GDM login banner.
