---
scapolite:
    class: group
    version: '0.51'
id: enable_execshield_settings
id_namespace: org.ssgproject.RHEL-8
title: Enable ExecShield
description: <see below>
contents:
  - class: rule_ref
    idref: sysctl_kernel_randomize_va_space
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Enable Randomized Layout of Virtual Address Space
  - class: rule_ref
    idref: sysctl_kernel_kptr_restrict
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Restrict Exposed Kernel Pointer Addresses Access
  - class: rule_ref
    idref: sysctl_kernel_exec_shield
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Enable ExecShield via sysctl
---


## /description

ExecShield
describes kernel features that provide protection against exploitation
of memory corruption errors such as buffer overflows. These features
include random placement of the stack and other memory regions,
prevention of execution in memory that should only hold data, and
special handling of text buffers. These protections are enabled by
default on 32-bit systems and controlled through `sysctl` variables
`kernel.exec-shield` and `kernel.randomize_va_space`. On the latest
64-bit systems, `kernel.exec-shield` cannot be enabled or disabled with
`sysctl`.
