---
scapolite:
    class: group
    version: '0.51'
id: disabling_nfsd
id_namespace: org.ssgproject.RHEL-8
title: Disable NFS Server Daemons
description: <see below>
contents:
  - class: rule_ref
    idref: service_rpcsvcgssd_disabled
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Disable Secure RPC Server Service (rpcsvcgssd)
  - class: rule_ref
    idref: service_nfs_disabled
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Disable Network File System (nfs)
  - class: rule_ref
    idref: nfs_no_anonymous
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Specify UID and GID for Anonymous NFS Connections
---


## /description

There
is no need to run the NFS server daemons `nfs` and `rpcsvcgssd` except
on a small number of properly secured systems designated as NFS servers.
Ensure that these daemons are turned off on clients.
