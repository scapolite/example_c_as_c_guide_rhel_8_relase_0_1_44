---
scapolite:
    class: group
    version: '0.51'
id: coredumps
id_namespace: org.ssgproject.RHEL-8
title: Disable Core Dumps
description: <see below>
contents:
  - class: rule_ref
    idref: sysctl_fs_suid_dumpable
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Disable Core Dumps for SUID programs
  - class: rule_ref
    idref: disable_users_coredumps
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Disable Core Dumps for All Users
---


## /description

A
core dump file is the memory image of an executable program when it was
terminated by the operating system due to errant behavior. In most
cases, only software developers legitimately need to access these files.
The core dump files may also contain sensitive information, or
unnecessarily occupy large amounts of disk space.  
  
Once a hard limit is set in `/etc/security/limits.conf`, a user cannot
increase that limit within his or her own session. If access to core
dumps is required, consider restricting them to only certain users or
groups. See the `limits.conf` man page for more information.  
  
The core dumps of setuid programs are further protected. The `sysctl`
variable `fs.suid_dumpable` controls whether the kernel allows core
dumps from these programs at all. The default value of 0 is recommended.
