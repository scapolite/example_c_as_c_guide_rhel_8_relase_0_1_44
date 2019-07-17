---
scapolite:
    class: group
    version: '0.51'
id: gnome_system_settings
id_namespace: org.ssgproject.RHEL-8
title: GNOME System Settings
description: <see below>
contents:
  - class: rule_ref
    idref: gconf_gnome_disable_clock_temperature
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Disable the GNOME Clock Temperature Feature
  - class: rule_ref
    idref: gconf_gnome_disable_clock_weather
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Disable the GNOME Clock Weather Feature
  - class: rule_ref
    idref: dconf_gnome_disable_geolocation
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Disable Geolocation in GNOME3
  - class: rule_ref
    idref: dconf_gnome_disable_power_settings
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Disable Power Settings in GNOME3
  - class: rule_ref
    idref: gconf_gnome_disable_ctrlaltdel_reboot
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Disable Ctrl-Alt-Del Reboot Key Sequence in GNOME
  - class: rule_ref
    idref: dconf_gnome_disable_user_admin
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Disable User Administration in GNOME3
  - class: rule_ref
    idref: dconf_gnome_disable_ctrlaltdel_reboot
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Disable Ctrl-Alt-Del Reboot Key Sequence in GNOME3
---


## /description

GNOME
provides configuration and functionality to a graphical desktop
environment that changes grahical configurations or allow a user to
perform actions that users normally would not be able to do in
non-graphical mode such as remote access configuration, power policies,
Geo-location, etc. Configuring such settings in GNOME will prevent
accidential graphical configuration changes by users from taking place.
