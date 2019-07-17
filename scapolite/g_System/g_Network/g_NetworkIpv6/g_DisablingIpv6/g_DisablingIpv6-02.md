---
scapolite:
    class: group
    version: '0.51'
id: disabling_ipv6
id_namespace: org.ssgproject.RHEL-8
title: Disable Support for IPv6 Unless Needed
description: <see below>
contents:
  - class: rule_ref
    idref: network_ipv6_disable_interfaces
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Disable Interface Usage of IPv6
  - class: rule_ref
    idref: kernel_module_ipv6_option_disabled
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Disable IPv6 Networking Support Automatic Loading
  - class: rule_ref
    idref: sysctl_net_ipv6_conf_all_disable_ipv6
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Disable IPv6 Networking Support Automatic Loading
  - class: rule_ref
    idref: network_ipv6_disable_rpc
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Disable Support for RPC IPv6
---


## /description

Despite
configuration that suggests support for IPv6 has been disabled,
link-local IPv6 address auto-configuration occurs even when only an IPv4
address is assigned. The only way to effectively prevent execution of
the IPv6 networking stack is to instruct the system not to activate the
IPv6 kernel module.
