---
scapolite:
    class: group
    version: '0.51'
id: gnome_media_settings
id_namespace: org.ssgproject.RHEL-8
title: GNOME Media Settings
description: <see below>
contents:
  - class: rule_ref
    idref: gconf_gnome_disable_automount
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Disable GNOME Automounting
  - class: rule_ref
    idref: dconf_gnome_disable_automount
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Disable GNOME3 Automounting
  - class: rule_ref
    idref: dconf_gnome_disable_thumbnailers
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Disable All GNOME3 Thumbnailers
  - class: rule_ref
    idref: gconf_gnome_disable_thumbnailers
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Disable All GNOME Thumbnailers
---


## /description

GNOME
media settings that apply to the graphical interface.
