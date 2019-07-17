---
scapolite:
    class: group
    version: '0.51'
id: disabling_dhcp_server
id_namespace: org.ssgproject.RHEL-8
title: Disable DHCP Server
description: <see below>
contents:
  - class: rule_ref
    idref: service_dhcpd_disabled
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Disable DHCP Service
  - class: rule_ref
    idref: package_dhcp_removed
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Uninstall DHCP Server Package
---


## /description

The
DHCP server `dhcpd` is not installed or activated by default. If the
software was installed and activated, but the system does not need to
act as a DHCP server, it should be disabled and removed.
