---
scapolite:
    class: group
    version: '0.51'
id: disk_partitioning
id_namespace: org.ssgproject.RHEL-8
title: Disk Partitioning
description: <see below>
contents:
  - class: rule_ref
    idref: partition_for_var_log_audit
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Ensure /var/log/audit Located On Separate Partition
  - class: rule_ref
    idref: partition_for_var_tmp
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Ensure /var/tmp Located On Separate Partition
  - class: rule_ref
    idref: partition_for_tmp
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Ensure /tmp Located On Separate Partition
  - class: rule_ref
    idref: partition_for_srv
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Ensure /srv Located On Separate Partition
  - class: rule_ref
    idref: partition_for_home
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Ensure /home Located On Separate Partition
  - class: rule_ref
    idref: encrypt_partitions
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Encrypt Partitions
  - class: rule_ref
    idref: partition_for_var
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Ensure /var Located On Separate Partition
  - class: rule_ref
    idref: partition_for_var_log
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Ensure /var/log Located On Separate Partition
---


## /description

To
ensure separation and protection of data, there are top-level system
directories which should be placed on their own physical partition or
logical volume. The installer\'s default partitioning scheme creates
separate logical volumes for `/`, `/boot`, and `swap`.

-   If starting with any of the default layouts, check the box to
    \\\"Review and modify partitioning.\\\" This allows for the easy
    creation of additional logical volumes inside the volume group
    already created, though it may require making `/`\'s logical volume
    smaller to create space. In general, using logical volumes is
    preferable to using partitions because they can be more easily
    adjusted later.
-   If creating a custom layout, create the partitions mentioned in the
    previous paragraph (which the installer will require anyway), as
    well as separate ones described in the following sections.

If a system has already been installed, and the default partitioning
scheme was used, it is possible but nontrivial to modify it to create
separate logical volumes for the directories listed above. The Logical
Volume Manager (LVM) makes this possible. See the LVM HOWTO at
<http://tldp.org/HOWTO/LVM-HOWTO/> for more detailed information on LVM.
