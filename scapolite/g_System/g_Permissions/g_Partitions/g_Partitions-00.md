---
scapolite:
    class: group
    version: '0.51'
id: partitions
id_namespace: org.ssgproject.RHEL-8
title: Restrict Partition Mount Options
description: <see below>
values:
  - id: var_removable_partition
    id_namespace: org.ssgproject.RHEL-8
    title: Removable Partition
    description: |
        This
        value is used by the checks mount\_option\_nodev\_removable\_partitions,
        mount\_option\_nodev\_removable\_partitions, and
        mount\_option\_nodev\_removable\_partitions to ensure that the correct
        mount options are set on partitions mounted from removable media such as
        CD-ROMs, USB keys, and floppy drives. This value should be modified to
        reflect any removable partitions that are required on the local system.
    type: string
    definitions:
      - selector: dev_cdrom
        value: /dev/cdrom
contents:
  - class: rule_ref
    idref: mount_option_nodev_nonroot_local_partitions
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Add nodev Option to Non-Root Local Partitions
  - class: rule_ref
    idref: mount_option_nosuid_removable_partitions
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Add nosuid Option to Removable Media Partitions
  - class: rule_ref
    idref: mount_option_noexec_removable_partitions
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Add noexec Option to Removable Media Partitions
  - class: rule_ref
    idref: mount_option_nodev_removable_partitions
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Add nodev Option to Removable Media Partitions
  - class: rule_ref
    idref: mount_option_dev_shm_noexec
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Add noexec Option to /dev/shm
  - class: rule_ref
    idref: mount_option_tmp_nosuid
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Add nosuid Option to /tmp
  - class: rule_ref
    idref: mount_option_tmp_nodev
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Add nodev Option to /tmp
  - class: rule_ref
    idref: mount_option_var_tmp_noexec
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Add noexec Option to /var/tmp
  - class: rule_ref
    idref: mount_option_home_nosuid
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Add nosuid Option to /home
  - class: rule_ref
    idref: mount_option_tmp_noexec
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Add noexec Option to /tmp
  - class: rule_ref
    idref: mount_option_dev_shm_nosuid
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Add nosuid Option to /dev/shm
  - class: rule_ref
    idref: mount_option_var_tmp_nodev
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Add nodev Option to /var/tmp
  - class: rule_ref
    idref: mount_option_var_tmp_bind
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Bind Mount /var/tmp To /tmp
  - class: rule_ref
    idref: mount_option_dev_shm_nodev
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Add nodev Option to /dev/shm
  - class: rule_ref
    idref: mount_option_home_nodev
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Add nodev Option to /home
  - class: rule_ref
    idref: mount_option_var_tmp_nosuid
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Add nosuid Option to /var/tmp
---


## /description

System
partitions can be mounted with certain options that limit what files on
those partitions can do. These options are set in the `/etc/fstab`
configuration file, and can be used to make certain types of malicious
behavior more difficult.
