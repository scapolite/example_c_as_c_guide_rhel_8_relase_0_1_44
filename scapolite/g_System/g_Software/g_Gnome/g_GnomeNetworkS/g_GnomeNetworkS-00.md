---
scapolite:
    class: group
    version: '0.51'
id: gnome_network_settings
id_namespace: org.ssgproject.RHEL-8
title: GNOME Network Settings
description: <see below>
contents:
  - class: rule_ref
    idref: dconf_gnome_disable_wifi_notification
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Disable WIFI Network Notification in GNOME3
  - class: rule_ref
    idref: gconf_gnome_disable_wifi_create
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Disable WIFI Network Connection Creation in GNOME
  - class: rule_ref
    idref: gconf_gnome_disable_wifi_disconnect
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Disable WIFI Network Disconnect Notification in GNOME
  - class: rule_ref
    idref: gconf_gnome_disable_wifi_notification
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Disable WIFI Network Connection Notification in GNOME
  - class: rule_ref
    idref: dconf_gnome_disable_wifi_create
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Disable WIFI Network Connection Creation in GNOME3
---


## /description

GNOME
network settings that apply to the graphical interface.
