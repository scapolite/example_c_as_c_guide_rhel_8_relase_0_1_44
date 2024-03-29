---
scapolite:
    class: group
    version: '0.51'
id: bootloader-grub-legacy
id_namespace: org.ssgproject.RHEL-8
title: Set Boot Loader Password
description: <see below>
contents: []
---


## /description

During
the boot process, the boot loader is responsible for starting the
execution of the kernel and passing options to it. The boot loader
allows for the selection of different kernels - possibly on different
partitions or media. The default Red Hat Enterprise Linux boot loader
for x86 systems is called GRUB. Options it can pass to the kernel
include *single-user mode*, which provides root access without any
authentication, and the ability to disable SELinux. To prevent local
users from modifying the boot parameters and endangering security,
protect the boot loader configuration with a password and ensure its
configuration file\'s permissions are set properly.
