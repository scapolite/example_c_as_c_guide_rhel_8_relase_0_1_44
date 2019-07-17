---
scapolite:
    class: group
    version: '0.51'
id: mounting
id_namespace: org.ssgproject.RHEL-8
title: Restrict Dynamic Mounting and Unmounting of Filesystems
description: <see below>
contents:
  - class: rule_ref
    idref: kernel_module_hfs_disabled
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Disable Mounting of hfs
  - class: rule_ref
    idref: kernel_module_usb-storage_disabled
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Disable Modprobe Loading of USB Storage Driver
  - class: rule_ref
    idref: kernel_module_freevxfs_disabled
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Disable Mounting of freevxfs
  - class: rule_ref
    idref: kernel_module_udf_disabled
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Disable Mounting of udf
  - class: rule_ref
    idref: kernel_module_jffs2_disabled
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Disable Mounting of jffs2
  - class: rule_ref
    idref: kernel_module_squashfs_disabled
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Disable Mounting of squashfs
  - class: rule_ref
    idref: kernel_module_hfsplus_disabled
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Disable Mounting of hfsplus
  - class: rule_ref
    idref: bios_assign_password
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Assign Password to Prevent Changes to Boot Firmware Configu ...
  - class: rule_ref
    idref: bios_disable_usb_boot
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Disable Booting from USB Devices in Boot Firmware
  - class: rule_ref
    idref: kernel_module_cramfs_disabled
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Disable Mounting of cramfs
  - class: rule_ref
    idref: grub2_nousb_argument
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Disable Kernel Support for USB via Bootloader Configuration
  - class: rule_ref
    idref: service_autofs_disabled
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Disable the Automounter
---


## /description

Linux
includes a number of facilities for the automated addition and removal
of filesystems on a running system. These facilities may be necessary in
many environments, but this capability also carries some risk \--
whether direct risk from allowing users to introduce arbitrary
filesystems, or risk that software flaws in the automated mount facility
itself could allow an attacker to compromise the system.  
  
This command can be used to list the types of filesystems that are
available to the currently executing kernel:

``` 
$ find /lib/modules/`uname -r`/kernel/fs -type f -name '*.ko'
```

If these filesystems are not required then they can be explicitly
disabled in a configuratio file in `/etc/modprobe.d`.
