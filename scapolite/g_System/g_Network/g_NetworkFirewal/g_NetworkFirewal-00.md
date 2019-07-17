---
scapolite:
    class: group
    version: '0.51'
id: network-firewalld
id_namespace: org.ssgproject.RHEL-8
title: firewalld
description: <see below>
contents:
  - class: group_ref
    idref: firewalld_activation
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Inspect and Activate Default firewalld Rules
  - class: group_ref
    idref: ruleset_modifications
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Strengthen the Default Ruleset
---


## /description

The
dynamic firewall daemon `firewalld` provides a dynamically managed
firewall with support for network "zones" to assign a level of trust to
a network and its associated connections and interfaces. It has support
for IPv4 and IPv6 firewall settings. It supports Ethernet bridges and
has a separation of runtime and permanent configuration options. It also
has an interface for services or applications to add firewall rules
directly.  
A graphical configuration tool, `firewall-config`, is used to configure
`firewalld`, which in turn uses `iptables` tool to communicate with
`Netfilter` in the kernel which implements packet filtering.  
The firewall service provided by `firewalld` is dynamic rather than
static because changes to the configuration can be made at anytime and
are immediately implemented. There is no need to save or apply the
changes. No unintended disruption of existing network connections occurs
as no part of the firewall has to be reloaded.
