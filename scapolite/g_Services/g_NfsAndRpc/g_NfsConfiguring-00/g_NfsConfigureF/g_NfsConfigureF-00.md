---
scapolite:
    class: group
    version: '0.51'
id: nfs_configure_fixed_ports
id_namespace: org.ssgproject.RHEL-8
title: Configure NFS Services to Use Fixed Ports (NFSv3 and NFSv2)
description: <see below>
contents:
  - class: rule_ref
    idref: nfs_fixed_lockd_udp_port
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Configure lockd to use static UDP port
  - class: rule_ref
    idref: nfs_fixed_lockd_tcp_port
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Configure lockd to use static TCP port
  - class: rule_ref
    idref: nfs_fixed_mountd_port
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Configure mountd to use static port
  - class: rule_ref
    idref: nfs_fixed_statd_port
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Configure statd to use static port
---


## /description

Firewalling
should be done at each host and at the border firewalls to protect the
NFS daemons from remote access, since NFS servers should never be
accessible from outside the organization. However, by default for NFSv3
and NFSv2, the RPC Bind service assigns each NFS service to a port
dynamically at service startup time. Dynamic ports cannot be protected
by port filtering firewalls such as `iptables`.  
  
Therefore, restrict each service to always use a given port, so that
firewalling can be done effectively. Note that, because of the way RPC
is implemented, it is not possible to disable the RPC Bind service even
if ports are assigned statically to all RPC services.  
  
In NFSv4, the mounting and locking protocols have been incorporated into
the protocol, and the server listens on the the well-known TCP port
2049. As such, NFSv4 does not need to interact with the
`rpcbind, lockd, and rpc.statd` daemons, which can and should be
disabled in a pure NFSv4 environment. The `rpc.mountd` daemon is still
required on the NFS server to setup exports, but is not involved in any
over-the-wire operations.
