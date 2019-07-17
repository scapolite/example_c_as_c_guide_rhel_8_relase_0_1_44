---
scapolite:
    class: group
    version: '0.51'
id: restrictions
id_namespace: org.ssgproject.RHEL-8
title: Restrict Programs from Dangerous Execution Patterns
description: <see below>
contents:
  - class: group_ref
    idref: coredumps
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Disable Core Dumps
  - class: group_ref
    idref: daemon_umask
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Daemon Umask
  - class: group_ref
    idref: enable_execshield_settings
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Enable ExecShield
  - class: group_ref
    idref: enable_nx
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Enable Execute Disable (XD) or No Execute (NX) Support on x ...
  - class: group_ref
    idref: poisoning
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Memory Poisoning
  - class: rule_ref
    idref: grub2_vsyscall_argument
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Disable vsyscalls
  - class: rule_ref
    idref: sysctl_kernel_dmesg_restrict
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Restrict Access to Kernel Message Buffer
  - class: rule_ref
    idref: sysctl_kernel_yama_ptrace_scope
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Restrict usage of ptrace to descendant processes
  - class: rule_ref
    idref: sysctl_kernel_kexec_load_disabled
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Disable kernel image loading
---


## /description

The
recommendations in this section are designed to ensure that the
system\'s features to protect against potentially dangerous program
execution are activated. These protections are applied at the system
initialization or kernel level, and defend against certain types of
badly-configured or compromised programs.
