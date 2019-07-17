---
scapolite:
    class: group
    version: '0.51'
id: nfs_configuring_all_machines
id_namespace: org.ssgproject.RHEL-8
title: Configure All Systems which Use NFS
description: <see below>
contents:
  - class: group_ref
    idref: nfs_configure_fixed_ports
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Configure NFS Services to Use Fixed Ports (NFSv3 and NFSv2)
  - class: group_ref
    idref: nfs_client_or_server_not_both
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Make Each System a Client or a Server, not Both
---


## /description

The
steps in this section are appropriate for all systems which run NFS,
whether they operate as clients or as servers.
