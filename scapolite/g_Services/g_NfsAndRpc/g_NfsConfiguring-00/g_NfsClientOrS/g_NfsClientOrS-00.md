---
scapolite:
    class: group
    version: '0.51'
id: nfs_client_or_server_not_both
id_namespace: org.ssgproject.RHEL-8
title: Make Each System a Client or a Server, not Both
description: <see below>
contents: []
---


## /description

If
NFS must be used, it should be deployed in the simplest configuration
possible to avoid maintainability problems which may lead to unnecessary
security exposure. Due to the reliability and security problems caused
by NFS (specially NFSv3 and NFSv2), it is not a good idea for systems
which act as NFS servers to also mount filesystems via NFS. At the
least, crossed mounts (the situation in which each of two servers mounts
a filesystem from the other) should never be used.
