---
scapolite:
    class: group
    version: '0.51'
id: disabling_dhcp_client
id_namespace: org.ssgproject.RHEL-8
title: Disable DHCP Client
description: <see below>
contents:
  - class: rule_ref
    idref: sysconfig_networking_bootproto_ifcfg
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Disable DHCP Client in ifcfg
---


## /description

DHCP
is the default network configuration method provided by the system
installer, and common on many networks. Nevertheless, manual management
of IP addresses for systems implies a greater degree of management and
accountability for network activity.
