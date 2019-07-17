---
scapolite:
    class: group
    version: '0.51'
id: mounting_remote_filesystems
id_namespace: org.ssgproject.RHEL-8
title: Mount Remote Filesystems with Restrictive Options
description: <see below>
contents:
  - class: rule_ref
    idref: mount_option_noexec_remote_filesystems
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Mount Remote Filesystems with noexec
  - class: rule_ref
    idref: mount_option_nosuid_remote_filesystems
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Mount Remote Filesystems with nosuid
  - class: rule_ref
    idref: mount_option_nodev_remote_filesystems
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Mount Remote Filesystems with nodev
  - class: rule_ref
    idref: mount_option_krb_sec_remote_filesystems
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Mount Remote Filesystems with Kerberos Security
---


## /description

Edit
the file `/etc/fstab`. For each filesystem whose type (column 3) is
`nfs` or `nfs4`, add the text `,nodev,nosuid` to the list of mount
options in column 4. If appropriate, also add `,noexec`.  
  
See the section titled \"Restrict Partition Mount Options\" for a
description of the effects of these options. In general, execution of
files mounted via NFS should be considered risky because of the
possibility that an adversary could intercept the request and substitute
a malicious file. Allowing setuid files to be executed from remote
servers is particularly risky, both for this reason and because it
requires the clients to extend root-level trust to the NFS server.
