---
scapolite:
    class: group
    version: '0.51'
id: permissions
id_namespace: org.ssgproject.RHEL-8
title: File Permissions and Masks
description: <see below>
contents:
  - class: group_ref
    idref: files
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Verify Permissions on Important Files and Directories
  - class: group_ref
    idref: mounting
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Restrict Dynamic Mounting and Unmounting of Filesystems
  - class: group_ref
    idref: restrictions
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Restrict Programs from Dangerous Execution Patterns
  - class: group_ref
    idref: partitions
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Restrict Partition Mount Options
---


## /description

Traditional
Unix security relies heavily on file and directory permissions to
prevent unauthorized users from reading or modifying files to which they
should not have access.  
  
Several of the commands in this section search filesystems for files or
directories with certain characteristics, and are intended to be run on
every local partition on a given system. When the variable *PART*
appears in one of the commands below, it means that the command is
intended to be run repeatedly, with the name of each local partition
substituted for *PART* in turn.  
  
The following command prints a list of all xfs partitions on the local
system, which is the default filesystem for Red Hat Enterprise Linux 8
installations:

``` 
$ mount -t xfs | awk '{print $3}'
```

For any systems that use a different local filesystem type, modify this
command as appropriate.
