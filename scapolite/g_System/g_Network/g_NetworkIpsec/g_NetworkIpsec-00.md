---
scapolite:
    class: group
    version: '0.51'
id: network-ipsec
id_namespace: org.ssgproject.RHEL-8
title: IPSec Support
description: <see below>
contents:
  - class: rule_ref
    idref: package_libreswan_installed
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Install libreswan Package
  - class: rule_ref
    idref: libreswan_approved_tunnels
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Verify Any Configured IPSec Tunnel Connections
---


## /description

Support
for Internet Protocol Security (IPsec)
