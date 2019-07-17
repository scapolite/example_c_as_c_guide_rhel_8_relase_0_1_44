---
scapolite:
    class: group
    version: '0.51'
id: configuring_ipv6
id_namespace: org.ssgproject.RHEL-8
title: Configure IPv6 Settings if Necessary
description: <see below>
contents:
  - class: group_ref
    idref: disabling_ipv6_autoconfig
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Disable Automatic Configuration
  - class: group_ref
    idref: network_ipv6_limit_requests
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Limit Network-Transmitted Configuration if Using Static IPv ...
  - class: rule_ref
    idref: network_ipv6_static_address
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Manually Assign Global IPv6 Address
  - class: rule_ref
    idref: network_ipv6_privacy_extensions
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Use Privacy Extensions for Address
  - class: rule_ref
    idref: network_ipv6_default_gateway
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Manually Assign IPv6 Router Address
---


## /description

A
major feature of IPv6 is the extent to which systems implementing it can
automatically configure their networking devices using information from
the network. From a security perspective, manually configuring important
configuration information is preferable to accepting it from the network
in an unauthenticated fashion.
