---
scapolite:
    class: group
    version: '0.51'
id: network
id_namespace: org.ssgproject.RHEL-8
title: Network Configuration and Firewalls
description: <see below>
contents:
  - class: group_ref
    idref: network_disable_unused_interfaces
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Disable Unused Interfaces
  - class: group_ref
    idref: network-ipsec
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: IPSec Support
  - class: group_ref
    idref: network-uncommon
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Uncommon Network Protocols
  - class: group_ref
    idref: network-iptables
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: iptables and ip6tables
  - class: group_ref
    idref: network-firewalld
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: firewalld
  - class: group_ref
    idref: network-ipv6
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: IPv6
  - class: group_ref
    idref: network-wireless
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Wireless Networking
  - class: group_ref
    idref: network-kernel
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Kernel Parameters Which Affect Networking
  - class: group_ref
    idref: network_ssl
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Transport Layer Security Support
  - class: rule_ref
    idref: network_disable_ddns_interfaces
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Disable Client Dynamic DNS Updates
  - class: rule_ref
    idref: network_configure_name_resolution
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Configure Multiple DNS Servers in /etc/resolv.conf
  - class: rule_ref
    idref: network_disable_zeroconf
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Disable Zeroconf Networking
  - class: rule_ref
    idref: network_sniffer_disabled
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Ensure System is Not Acting as a Network Sniffer
---


## /description

Most
systems must be connected to a network of some sort, and this brings
with it the substantial risk of network attack. This section discusses
the security impact of decisions about networking which must be made
when configuring a system.  
  
This section also discusses firewalls, network access controls, and
other network security frameworks, which allow system-level rules to be
written that can limit an attackers\' ability to connect to your system.
These rules can specify that network traffic should be allowed or denied
from certain IP addresses, hosts, and networks. The rules can also
specify which of the system\'s network services are available to
particular hosts or networks.
