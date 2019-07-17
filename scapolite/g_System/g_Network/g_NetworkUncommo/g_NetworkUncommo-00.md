---
scapolite:
    class: group
    version: '0.51'
id: network-uncommon
id_namespace: org.ssgproject.RHEL-8
title: Uncommon Network Protocols
description: <see below>
contents:
  - class: rule_ref
    idref: kernel_module_tipc_disabled
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Disable TIPC Support
  - class: rule_ref
    idref: kernel_module_sctp_disabled
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Disable SCTP Support
  - class: rule_ref
    idref: kernel_module_dccp_disabled
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Disable DCCP Support
  - class: rule_ref
    idref: kernel_module_rds_disabled
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Disable RDS Support
---


## /description

The
system includes support for several network protocols which are not
commonly used. Although security vulnerabilities in kernel networking
code are not frequently discovered, the consequences can be dramatic.
Ensuring uncommon network protocols are disabled reduces the system\'s
risk to attacks targeted at its implementation of those protocols.
