---
scapolite:
    class: group
    version: '0.51'
id: dns
id_namespace: org.ssgproject.RHEL-8
title: DNS Server
description: <see below>
contents:
  - class: group_ref
    idref: dns_server_isolation
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Isolate DNS from Other Services
  - class: group_ref
    idref: dns_server_protection
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Protect DNS Data from Tampering or Attack
  - class: group_ref
    idref: disabling_dns_server
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Disable DNS Server
---


## /description

Most
organizations have an operational need to run at least one nameserver.
However, there are many common attacks involving DNS server software,
and this server software should be disabled on any system on which it is
not needed.
