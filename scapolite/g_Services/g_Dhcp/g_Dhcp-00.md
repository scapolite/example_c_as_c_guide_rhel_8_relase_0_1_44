---
scapolite:
    class: group
    version: '0.51'
id: dhcp
id_namespace: org.ssgproject.RHEL-8
title: DHCP
description: <see below>
contents:
  - class: group_ref
    idref: disabling_dhcp_client
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Disable DHCP Client
  - class: group_ref
    idref: disabling_dhcp_server
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Disable DHCP Server
  - class: group_ref
    idref: dhcp_client_configuration
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Configure DHCP Client if Necessary
  - class: group_ref
    idref: dhcp_server_configuration
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Configure DHCP Server
---


## /description

The
Dynamic Host Configuration Protocol (DHCP) allows systems to request and
obtain an IP address and other configuration parameters from a server.  
  
This guide recommends configuring networking on clients by manually
editing the appropriate files under `/etc/sysconfig`. Use of DHCP can
make client systems vulnerable to compromise by rogue DHCP servers, and
should be avoided unless necessary. If using DHCP is necessary, however,
there are best practices that should be followed to minimize security
risk.
