---
scapolite:
    class: group
    version: '0.51'
id: disabling_nfs_services
id_namespace: org.ssgproject.RHEL-8
title: Disable Services Used Only by NFS
description: <see below>
contents:
  - class: rule_ref
    idref: service_rpcbind_disabled
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Disable rpcbind Service
  - class: rule_ref
    idref: service_rpcgssd_disabled
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Disable Secure RPC Client Service (rpcgssd)
  - class: rule_ref
    idref: service_nfslock_disabled
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Disable Network File System Lock Service (nfslock)
  - class: rule_ref
    idref: service_rpcidmapd_disabled
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Disable RPC ID Mapping Service (rpcidmapd)
---


## /description

If
NFS is not needed, disable the NFS client daemons nfslock, rpcgssd, and
rpcidmapd.  
  
All of these daemons run with elevated privileges, and many listen for
network connections. If they are not needed, they should be disabled to
improve system security posture.
