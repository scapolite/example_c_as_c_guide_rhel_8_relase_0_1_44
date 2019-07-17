---
scapolite:
    class: group
    version: '0.51'
id: dns_server_protection
id_namespace: org.ssgproject.RHEL-8
title: Protect DNS Data from Tampering or Attack
description: <see below>
contents:
  - class: group_ref
    idref: dns_server_partition_with_views
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Use Views to Partition External and Internal Information
  - class: group_ref
    idref: dns_server_separate_internal_external
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Run Separate DNS Servers for External and Internal Queries
  - class: rule_ref
    idref: dns_server_disable_zone_transfers
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Disable Zone Transfers from the Nameserver
  - class: rule_ref
    idref: dns_server_disable_dynamic_updates
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Disable Dynamic Updates
  - class: rule_ref
    idref: dns_server_authenticate_zone_transfers
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Authenticate Zone Transfers
---


## /description

This
section discusses DNS configuration options which make it more difficult
for attackers to gain access to private DNS data or to modify DNS data.
