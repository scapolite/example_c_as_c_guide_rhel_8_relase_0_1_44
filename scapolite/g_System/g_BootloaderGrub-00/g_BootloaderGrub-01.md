---
scapolite:
    class: group
    version: '0.51'
id: bootloader-grub2
id_namespace: org.ssgproject.RHEL-8
title: Set Boot Loader Password
description: <see below>
contents:
  - class: rule_ref
    idref: file_groupowner_efi_grub2_cfg
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Verify the UEFI Boot Loader grub.cfg Group Ownership
  - class: rule_ref
    idref: grub2_password
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Set Boot Loader Password in grub2
  - class: rule_ref
    idref: file_groupowner_grub2_cfg
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Verify /boot/grub2/grub.cfg Group Ownership
  - class: rule_ref
    idref: uefi_no_removeable_media
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: UEFI Boat Loader Is Not Installed On Removeable Media
  - class: rule_ref
    idref: file_owner_efi_grub2_cfg
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Verify the UEFI Boot Loader grub.cfg User Ownership
  - class: rule_ref
    idref: grub2_enable_iommu_force
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: IOMMU configuration directive
  - class: rule_ref
    idref: grub2_no_removeable_media
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Boat Loader Is Not Installed On Removeable Media
  - class: rule_ref
    idref: grub2_uefi_password
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Set the UEFI Boot Loader Password
  - class: rule_ref
    idref: file_permissions_grub2_cfg
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Verify /boot/grub2/grub.cfg Permissions
  - class: rule_ref
    idref: file_permissions_efi_grub2_cfg
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Verify the UEFI Boot Loader grub.cfg Permissions
  - class: rule_ref
    idref: file_owner_grub2_cfg
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Verify /boot/grub2/grub.cfg User Ownership
---


## /description

During
the boot process, the boot loader is responsible for starting the
execution of the kernel and passing options to it. The boot loader
allows for the selection of different kernels - possibly on different
partitions or media. The default Red Hat Enterprise Linux 8 boot loader
for x86 systems is called GRUB2. Options it can pass to the kernel
include *single-user mode*, which provides root access without any
authentication, and the ability to disable SELinux. To prevent local
users from modifying the boot parameters and endangering security,
protect the boot loader configuration with a password and ensure its
configuration file\'s permissions are set properly.
