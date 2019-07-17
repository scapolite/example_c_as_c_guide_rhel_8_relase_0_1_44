---
scapolite:
    class: group
    version: '0.51'
id: enable_nx
id_namespace: org.ssgproject.RHEL-8
title: Enable Execute Disable (XD) or No Execute (NX) Support on x86 Systems
description: <see below>
contents:
  - class: rule_ref
    idref: install_PAE_kernel_on_x86-32
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Install PAE Kernel on Supported 32-bit x86 Systems
  - class: rule_ref
    idref: bios_enable_execution_restrictions
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Enable NX or XD Support in the BIOS
---


## /description

Recent
processors in the x86 family support the ability to prevent code
execution on a per memory page basis. Generically and on AMD processors,
this ability is called No Execute (NX), while on Intel processors it is
called Execute Disable (XD). This ability can help prevent exploitation
of buffer overflow vulnerabilities and should be activated whenever
possible. Extra steps must be taken to ensure that this protection is
enabled, particularly on 32-bit x86 systems. Other processors, such as
Itanium and POWER, have included such support since inception and the
standard kernel for those platforms supports the feature. This is
enabled by default on the latest Red Hat and Fedora systems if supported
by the hardware.
