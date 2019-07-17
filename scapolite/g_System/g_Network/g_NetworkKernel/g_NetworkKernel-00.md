---
scapolite:
    class: group
    version: '0.51'
id: network-kernel
id_namespace: org.ssgproject.RHEL-8
title: Kernel Parameters Which Affect Networking
description: <see below>
contents:
  - class: group_ref
    idref: network_host_and_router_parameters
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Network Related Kernel Runtime Parameters for Hosts and Rou ...
  - class: group_ref
    idref: network_host_parameters
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Network Parameters for Hosts Only
---


## /description

The
`sysctl` utility is used to set parameters which affect the operation of
the Linux kernel. Kernel parameters which affect networking and have
security implications are described here.
