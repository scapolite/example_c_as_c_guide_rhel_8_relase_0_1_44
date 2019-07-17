---
scapolite:
    class: group
    version: '0.51'
id: disabling_nfs
id_namespace: org.ssgproject.RHEL-8
title: Disable All NFS Services if Possible
description: <see below>
contents:
  - class: group_ref
    idref: disabling_netfs
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Disable netfs if Possible
  - class: group_ref
    idref: disabling_nfs_services
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Disable Services Used Only by NFS
---


## /description

If
there is not a reason for the system to operate as either an NFS client
or an NFS server, follow all instructions in this section to disable
subsystems required by NFS.
