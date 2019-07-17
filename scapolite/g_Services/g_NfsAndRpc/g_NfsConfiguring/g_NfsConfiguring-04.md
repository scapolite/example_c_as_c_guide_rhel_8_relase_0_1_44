---
scapolite:
    class: group
    version: '0.51'
id: nfs_configuring_clients
id_namespace: org.ssgproject.RHEL-8
title: Configure NFS Clients
description: <see below>
contents:
  - class: group_ref
    idref: mounting_remote_filesystems
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Mount Remote Filesystems with Restrictive Options
  - class: group_ref
    idref: disabling_nfsd
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Disable NFS Server Daemons
---


## /description

The
steps in this section are appropriate for systems which operate as NFS
clients.
