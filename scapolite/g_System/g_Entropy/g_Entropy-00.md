---
scapolite:
    class: group
    version: '0.51'
id: entropy
id_namespace: org.ssgproject.RHEL-8
title: Protect Random-Number Entropy Pool
description: <see below>
contents:
  - class: rule_ref
    idref: kernel_disable_entropy_contribution_for_solid_state_drives
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Ensure Solid State Drives Do Not Contribute To Random-Numbe ...
---


## /description

The
I/O operations of the Linux kernel block layer due to their inherently
unpredictable execution times have been traditionally considered as a
reliable source to contribute to random-number entropy pool of the Linux
kernel. This has changed with introduction of solid-state storage
devices (SSDs) though.
