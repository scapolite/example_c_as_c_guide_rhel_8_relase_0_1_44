---
scapolite:
    class: group
    version: '0.51'
id: dhcp_server_configuration
id_namespace: org.ssgproject.RHEL-8
title: Configure DHCP Server
description: <see below>
contents:
  - class: rule_ref
    idref: dhcp_server_minimize_served_info
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Minimize Served Information
  - class: rule_ref
    idref: dhcp_server_deny_bootp
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Deny BOOTP Queries
  - class: rule_ref
    idref: dhcp_server_configure_logging
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Configure Logging
  - class: rule_ref
    idref: dhcp_server_deny_decline
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Deny Decline Messages
  - class: rule_ref
    idref: dhcp_server_disable_ddns
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Do Not Use Dynamic DNS
---


## /description

If
the system must act as a DHCP server, the configuration information it
serves should be minimized. Also, support for other protocols and
DNS-updating schemes should be explicitly disabled unless needed. The
configuration file for dhcpd is called `/etc/dhcp/dhcpd.conf`. The file
begins with a number of global configuration options. The remainder of
the file is divided into sections, one for each block of addresses
offered by dhcpd, each of which contains configuration options specific
to that address block.
