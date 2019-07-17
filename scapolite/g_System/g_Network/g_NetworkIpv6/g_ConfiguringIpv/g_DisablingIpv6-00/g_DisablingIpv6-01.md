---
scapolite:
    class: group
    version: '0.51'
id: disabling_ipv6_autoconfig
id_namespace: org.ssgproject.RHEL-8
title: Disable Automatic Configuration
description: <see below>
values:
  - id: sysctl_net_ipv6_conf_default_accept_redirects_value
    id_namespace: org.ssgproject.RHEL-8
    title: net.ipv6.conf.default.accept\_redirects
    description: |
        Toggle
        ICMP Redirect Acceptance By Default
    type: number
    default: disabled
    definitions:
      - selector: disabled
        value: 0
      - selector: enabled
        value: 1
  - id: sysctl_net_ipv6_conf_default_accept_ra_value
    id_namespace: org.ssgproject.RHEL-8
    title: net.ipv6.conf.default.accept\_ra
    description: |
        Accept
        default router advertisements by default?
    type: number
    default: disabled
    definitions:
      - selector: disabled
        value: 0
      - selector: enabled
        value: 1
  - id: sysctl_net_ipv6_conf_all_accept_ra_value
    id_namespace: org.ssgproject.RHEL-8
    title: net.ipv6.conf.all.accept\_ra
    description: |
        Accept
        all router advertisements?
    type: number
    default: disabled
    definitions:
      - selector: disabled
        value: 0
      - selector: enabled
        value: 1
  - id: sysctl_net_ipv6_conf_all_accept_redirects_value
    id_namespace: org.ssgproject.RHEL-8
    title: net.ipv6.conf.all.accept\_redirects
    description: |
        Toggle
        ICMP Redirect Acceptance
    type: number
    default: disabled
    definitions:
      - selector: disabled
        value: 0
      - selector: enabled
        value: 1
  - id: sysctl_net_ipv6_conf_all_accept_source_route_value
    id_namespace: org.ssgproject.RHEL-8
    title: net.ipv6.conf.all.accept\_source\_route
    description: |
        Trackers
        could be using source-routed packets to generate traffic that seems to
        be intra-net, but actually was created outside and has been redirected.
    type: number
    default: disabled
    definitions:
      - selector: disabled
        value: 0
      - selector: enabled
        value: 1
  - id: sysctl_net_ipv6_conf_default_accept_source_route_value
    id_namespace: org.ssgproject.RHEL-8
    title: net.ipv6.conf.default.accept\_source\_route
    description: |
        Trackers
        could be using source-routed packets to generate traffic that seems to
        be intra-net, but actually was created outside and has been redirected.
    type: number
    default: disabled
    definitions:
      - selector: disabled
        value: 0
      - selector: enabled
        value: 1
  - id: sysconfig_network_IPV6_AUTOCONF_value
    id_namespace: org.ssgproject.RHEL-8
    title: IPV6\_AUTOCONF
    description: |
        Toggle
        global IPv6 auto-configuration (only, if global forwarding is disabled)
    type: string
    default: disabled
    definitions:
      - selector: disabled
        value: no
      - selector: enabled
        value: yes
  - id: sysctl_net_ipv6_conf_all_forwarding_value
    id_namespace: org.ssgproject.RHEL-8
    title: net.ipv6.conf.all.forwarding
    description: |
        Toggle
        IPv6 Forwarding
    type: number
    default: disabled
    definitions:
      - selector: disabled
        value: 0
      - selector: enabled
        value: 1
contents:
  - class: rule_ref
    idref: sysctl_net_ipv6_conf_all_accept_source_route
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Configure Kernel Parameter for Accepting IPv6 Source-Routed ...
  - class: rule_ref
    idref: sysctl_net_ipv6_conf_default_accept_ra
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Configure Accepting IPv6 Router Advertisements by Default
  - class: rule_ref
    idref: sysctl_net_ipv6_conf_all_accept_ra
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Configure Accepting IPv6 Router Advertisements on All Inter ...
  - class: rule_ref
    idref: sysctl_net_ipv6_conf_all_accept_redirects
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Configure Accepting IPv6 Redirects on All Interfaces
  - class: rule_ref
    idref: sysctl_net_ipv6_conf_default_accept_redirects
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Configure Accepting IPv6 Redirects By Default
  - class: rule_ref
    idref: sysctl_net_ipv6_conf_default_accept_source_route
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Configure Kernel Parameter for Accepting Source-Routed Pack ...
  - class: rule_ref
    idref: sysctl_net_ipv6_conf_all_forwarding
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Disable Kernel Parameter for IPv6 Forwarding
---


## /description

Disable
the system\'s acceptance of router advertisements and redirects by
adding or correcting the following line in `/etc/sysconfig/network`
(note that this does not disable sending router solicitations):

``` 
IPV6_AUTOCONF=no
```
