---
scapolite:
    class: group
    version: '0.51'
id: network-ipv6
id_namespace: org.ssgproject.RHEL-8
title: IPv6
description: <see below>
contents:
  - class: group_ref
    idref: disabling_ipv6
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Disable Support for IPv6 Unless Needed
  - class: group_ref
    idref: configuring_ipv6
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Configure IPv6 Settings if Necessary
---


## /description

The
system includes support for Internet Protocol version 6. A major and
often-mentioned improvement over IPv4 is its enormous increase in the
number of available addresses. Another important feature is its support
for automatic configuration of many network settings.
