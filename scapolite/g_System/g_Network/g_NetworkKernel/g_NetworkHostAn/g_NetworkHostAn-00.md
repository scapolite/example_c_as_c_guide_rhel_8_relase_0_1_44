---
scapolite:
    class: group
    version: '0.51'
id: network_host_and_router_parameters
id_namespace: org.ssgproject.RHEL-8
title: Network Related Kernel Runtime Parameters for Hosts and Routers
description: <see below>
values:
  - id: sysctl_net_ipv4_conf_all_rp_filter_value
    id_namespace: org.ssgproject.RHEL-8
    title: net.ipv4.conf.all.rp\_filter
    description: |
        Enable
        to enforce sanity checking, also called ingress filtering or egress
        filtering. The point is to drop a packet if the source and destination
        IP addresses in the IP header do not make sense when considered in light
        of the physical interface on which it arrived.
    type: number
    default: enabled
    definitions:
      - selector: disabled
        value: 0
      - selector: enabled
        value: 1
  - id: sysctl_net_ipv4_conf_default_accept_redirects_value
    id_namespace: org.ssgproject.RHEL-8
    title: net.ipv4.conf.default.accept\_redirects
    description: |
        Disable
        ICMP Redirect Acceptance?
    type: number
    default: disabled
    definitions:
      - selector: disabled
        value: 0
      - selector: enabled
        value: 1
  - id: sysctl_net_ipv4_tcp_syncookies_value
    id_namespace: org.ssgproject.RHEL-8
    title: net.ipv4.tcp\_syncookies
    description: |
        Enable
        to turn on TCP SYN Cookie Protection
    type: number
    default: enabled
    definitions:
      - selector: disabled
        value: 0
      - selector: enabled
        value: 1
  - id: sysctl_net_ipv4_icmp_echo_ignore_broadcasts_value
    id_namespace: org.ssgproject.RHEL-8
    title: net.ipv4.icmp\_echo\_ignore\_broadcasts
    description: |
        Ignore
        all ICMP ECHO and TIMESTAMP requests sent to it via broadcast/multicast
    type: number
    default: enabled
    definitions:
      - selector: disabled
        value: 0
      - selector: enabled
        value: 1
  - id: sysctl_net_ipv4_conf_default_secure_redirects_value
    id_namespace: org.ssgproject.RHEL-8
    title: net.ipv4.conf.default.secure\_redirects
    description: |
        Enable
        to prevent hijacking of routing path by only allowing redirects from
        gateways known in routing table. Disable to refuse acceptance of secure
        ICMP redirected packages by default.
    type: number
    default: disabled
    definitions:
      - selector: disabled
        value: 0
      - selector: enabled
        value: 1
  - id: sysctl_net_ipv4_icmp_ignore_bogus_error_responses_value
    id_namespace: org.ssgproject.RHEL-8
    title: net.ipv4.icmp\_ignore\_bogus\_error\_responses
    description: |
        Enable
        to prevent unnecessary logging
    type: number
    default: enabled
    definitions:
      - selector: disabled
        value: 0
      - selector: enabled
        value: 1
  - id: sysctl_net_ipv4_conf_all_log_martians_value
    id_namespace: org.ssgproject.RHEL-8
    title: net.ipv4.conf.all.log\_martians
    description: |
        Disable
        so you don\'t Log Spoofed Packets, Source Routed Packets, Redirect
        Packets
    type: number
    default: enabled
    definitions:
      - selector: disabled
        value: 0
      - selector: enabled
        value: 1
  - id: sysctl_net_ipv4_conf_default_log_martians_value
    id_namespace: org.ssgproject.RHEL-8
    title: net.ipv4.conf.default.log\_martians
    description: |
        Disable
        so you don\'t Log Spoofed Packets, Source Routed Packets, Redirect
        Packets
    type: number
    default: enabled
    definitions:
      - selector: disabled
        value: 0
      - selector: enabled
        value: 1
  - id: sysctl_net_ipv4_conf_all_secure_redirects_value
    id_namespace: org.ssgproject.RHEL-8
    title: net.ipv4.conf.all.secure\_redirects
    description: |
        Enable
        to prevent hijacking of routing path by only allowing redirects from
        gateways known in routing table. Disable to refuse acceptance of secure
        ICMP redirected packets on all interfaces.
    type: number
    default: disabled
    definitions:
      - selector: disabled
        value: 0
      - selector: enabled
        value: 1
  - id: sysctl_net_ipv4_conf_all_accept_source_route_value
    id_namespace: org.ssgproject.RHEL-8
    title: net.ipv4.conf.all.accept\_source\_route
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
  - id: sysctl_net_ipv4_conf_all_accept_redirects_value
    id_namespace: org.ssgproject.RHEL-8
    title: net.ipv4.conf.all.accept\_redirects
    description: |
        Disable
        ICMP Redirect Acceptance
    type: number
    default: disabled
    definitions:
      - selector: disabled
        value: 0
      - selector: enabled
        value: 1
  - id: sysctl_net_ipv4_conf_default_rp_filter_value
    id_namespace: org.ssgproject.RHEL-8
    title: net.ipv4.conf.default.rp\_filter
    description: |
        Enables
        source route verification
    type: number
    default: enabled
    definitions:
      - selector: disabled
        value: 0
      - selector: enabled
        value: 1
  - id: sysctl_net_ipv4_conf_default_accept_source_route_value
    id_namespace: org.ssgproject.RHEL-8
    title: net.ipv4.conf.default.accept\_source\_route
    description: |
        Disable
        IP source routing?
    type: number
    default: disabled
    definitions:
      - selector: disabled
        value: 0
      - selector: enabled
        value: 1
contents:
  - class: rule_ref
    idref: sysctl_net_ipv4_conf_default_accept_redirects
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Configure Kernel Parameter for Accepting ICMP Redirects By  ...
  - class: rule_ref
    idref: sysctl_net_ipv4_conf_default_rp_filter
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Configure Kernel Parameter to Use Reverse Path Filtering by ...
  - class: rule_ref
    idref: sysctl_net_ipv4_conf_all_rp_filter
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Configure Kernel Parameter to Use Reverse Path Filtering fo ...
  - class: rule_ref
    idref: sysctl_net_ipv4_conf_all_secure_redirects
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Configure Kernel Parameter for Accepting Secure Redirects f ...
  - class: rule_ref
    idref: sysctl_net_ipv4_conf_default_log_martians
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Configure Kernel Parameter to Log Martian Packets By Defaul ...
  - class: rule_ref
    idref: sysctl_net_ipv4_conf_default_accept_source_route
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Configure Kernel Parameter for Accepting Source-Routed Pack ...
  - class: rule_ref
    idref: sysctl_net_ipv4_conf_all_accept_source_route
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Configure Kernel Parameter for Accepting IPv4 Source-Routed ...
  - class: rule_ref
    idref: sysctl_net_ipv4_tcp_syncookies
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Configure Kernel Parameter to Use TCP Syncookies
  - class: rule_ref
    idref: sysctl_net_ipv4_conf_all_log_martians
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Configure Kernel Parameter to Log Martian Packets
  - class: rule_ref
    idref: sysctl_net_ipv4_icmp_ignore_bogus_error_responses
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Configure Kernel Parameter to Ignore Bogus ICMP Error Respo ...
  - class: rule_ref
    idref: sysctl_net_ipv4_conf_default_secure_redirects
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Configure Kernel Parameter for Accepting Secure Redirects B ...
  - class: rule_ref
    idref: sysctl_net_ipv4_icmp_echo_ignore_broadcasts
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Configure Kernel Parameter to Ignore ICMP Broadcast Echo Re ...
  - class: rule_ref
    idref: sysctl_net_ipv4_conf_all_accept_redirects
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Configure Kernel Parameter for Accepting ICMP Redirects for ...
---


## /description

Certain
kernel parameters should be set for systems which are acting as either
hosts or routers to improve the system\'s ability defend against certain
types of IPv4 protocol attacks.
