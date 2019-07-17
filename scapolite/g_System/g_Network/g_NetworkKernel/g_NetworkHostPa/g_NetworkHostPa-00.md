---
scapolite:
    class: group
    version: '0.51'
id: network_host_parameters
id_namespace: org.ssgproject.RHEL-8
title: Network Parameters for Hosts Only
description: <see below>
contents:
  - class: rule_ref
    idref: sysctl_net_ipv4_conf_default_send_redirects
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Disable Kernel Parameter for Sending ICMP Redirects by Defa ...
  - class: rule_ref
    idref: sysctl_net_ipv4_conf_all_send_redirects
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Disable Kernel Parameter for Sending ICMP Redirects for All ...
  - class: rule_ref
    idref: sysctl_net_ipv4_ip_forward
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Disable Kernel Parameter for IP Forwarding
---


## /description

If
the system is not going to be used as a router, then setting certain
kernel parameters ensure that the host will not perform routing of
network traffic.
