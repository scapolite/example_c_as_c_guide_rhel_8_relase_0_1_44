---
scapolite:
    class: group
    version: '0.51'
id: dns_server_isolation
id_namespace: org.ssgproject.RHEL-8
title: Isolate DNS from Other Services
description: <see below>
contents:
  - class: group_ref
    idref: dns_server_chroot
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Run DNS Software in a chroot Jail
  - class: group_ref
    idref: dns_server_dedicated
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Run DNS Software on Dedicated Servers
---


## /description

This
section discusses mechanisms for preventing the DNS server from
interfering with other services. This is done both to protect the
remainder of the network should a nameserver be compromised, and to make
direct attacks on nameservers more difficult.
