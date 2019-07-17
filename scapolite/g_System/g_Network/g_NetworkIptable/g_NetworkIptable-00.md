---
scapolite:
    class: group
    version: '0.51'
id: network-iptables
id_namespace: org.ssgproject.RHEL-8
title: iptables and ip6tables
description: <see below>
contents:
  - class: group_ref
    idref: iptables_ruleset_modifications
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Strengthen the Default Ruleset
  - class: group_ref
    idref: iptables_activation
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Inspect and Activate Default Rules
---


## /description

A
host-based firewall called `netfilter` is included as part of the Linux
kernel distributed with the system. It is activated by default. This
firewall is controlled by the program `iptables`, and the entire
capability is frequently referred to by this name. An analogous program
called `ip6tables` handles filtering for IPv6.  
  
Unlike TCP Wrappers, which depends on the network server program to
support and respect the rules written, `netfilter` filtering occurs at
the kernel level, before a program can even process the data from the
network packet. As such, any program on the system is affected by the
rules written.  
  
This section provides basic information about strengthening the
`iptables` and `ip6tables` configurations included with the system. For
more complete information that may allow the construction of a
sophisticated ruleset tailored to your environment, please consult the
references at the end of this section.
