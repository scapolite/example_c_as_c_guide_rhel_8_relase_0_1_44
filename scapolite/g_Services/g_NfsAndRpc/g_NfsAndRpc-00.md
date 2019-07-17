---
scapolite:
    class: group
    version: '0.51'
id: nfs_and_rpc
id_namespace: org.ssgproject.RHEL-8
title: NFS and RPC
description: <see below>
contents:
  - class: group_ref
    idref: nfs_configuring_clients
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Configure NFS Clients
  - class: group_ref
    idref: nfs_configuring_all_machines
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Configure All Systems which Use NFS
  - class: group_ref
    idref: disabling_nfs
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Disable All NFS Services if Possible
  - class: group_ref
    idref: nfs_configuring_servers
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Configure NFS Servers
---


## /description

The
Network File System is a popular distributed filesystem for the Unix
environment, and is very widely deployed. This section discusses the
circumstances under which it is possible to disable NFS and its
dependencies, and then details steps which should be taken to secure
NFS\'s configuration. This section is relevant to systems operating as
NFS clients, as well as to those operating as NFS servers.
