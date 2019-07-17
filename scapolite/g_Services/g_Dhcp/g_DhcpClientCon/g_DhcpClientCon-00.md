---
scapolite:
    class: group
    version: '0.51'
id: dhcp_client_configuration
id_namespace: org.ssgproject.RHEL-8
title: Configure DHCP Client if Necessary
description: <see below>
contents:
  - class: rule_ref
    idref: dhcp_client_restrict_options
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Minimize the DHCP-Configured Options
---


## /description

If
DHCP must be used, then certain configuration changes can minimize the
amount of information it receives and applies from the network, and thus
the amount of incorrect information a rogue DHCP server could
successfully distribute. For more information on configuring dhclient,
see the `dhclient(8)` and `dhclient.conf(5)` man pages.
