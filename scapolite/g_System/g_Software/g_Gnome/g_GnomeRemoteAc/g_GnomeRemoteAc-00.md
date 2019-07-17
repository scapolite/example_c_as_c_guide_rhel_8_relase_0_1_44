---
scapolite:
    class: group
    version: '0.51'
id: gnome_remote_access_settings
id_namespace: org.ssgproject.RHEL-8
title: GNOME Remote Access Settings
description: <see below>
contents:
  - class: rule_ref
    idref: dconf_gnome_remote_access_encryption
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Require Encryption for Remote Access in GNOME3
  - class: rule_ref
    idref: dconf_gnome_remote_access_credential_prompt
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Require Credential Prompting for Remote Access in GNOME3
---


## /description

GNOME
remote access settings that apply to the graphical interface.
