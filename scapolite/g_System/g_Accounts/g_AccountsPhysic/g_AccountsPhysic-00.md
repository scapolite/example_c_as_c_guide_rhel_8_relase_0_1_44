---
scapolite:
    class: group
    version: '0.51'
id: accounts-physical
id_namespace: org.ssgproject.RHEL-8
title: Protect Physical Console Access
description: <see below>
contents:
  - class: group_ref
    idref: screen_locking
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Configure Screen Locking
  - class: rule_ref
    idref: require_singleuser_auth
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Require Authentication for Single User Mode
  - class: rule_ref
    idref: grub2_disable_interactive_boot
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Verify that Interactive Boot is Disabled
  - class: rule_ref
    idref: disable_ctrlaltdel_burstaction
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Disable Ctrl-Alt-Del Burst Action
  - class: rule_ref
    idref: disable_ctrlaltdel_reboot
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Disable Ctrl-Alt-Del Reboot Activation
  - class: rule_ref
    idref: service_debug-shell_disabled
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Disable debug-shell SystemD Service
---


## /description

It
is impossible to fully protect a system from an attacker with physical
access, so securing the space in which the system is located should be
considered a necessary step. However, there are some steps which, if
taken, make it more difficult for an attacker to quickly or undetectably
modify a system from its console.
