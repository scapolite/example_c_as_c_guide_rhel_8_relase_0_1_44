---
scapolite:
    class: group
    version: '0.51'
id: iptables_ruleset_modifications
id_namespace: org.ssgproject.RHEL-8
title: Strengthen the Default Ruleset
description: <see below>
contents:
  - class: group_ref
    idref: iptables_icmp_disabled
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Restrict ICMP Message Types
  - class: group_ref
    idref: iptables_log_and_drop_suspicious
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Log and Drop Packets with Suspicious Source Addresses
  - class: rule_ref
    idref: set_iptables_default_rule
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Set Default iptables Policy for Incoming Packets
  - class: rule_ref
    idref: set_iptables_default_rule_forward
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Set Default iptables Policy for Forwarded Packets
---


## /description

The
default rules can be strengthened. The system scripts that activate the
firewall rules expect them to be defined in the configuration files
`iptables` and `ip6tables` in the directory `/etc/sysconfig`. Many of
the lines in these files are similar to the command line arguments that
would be provided to the programs `/sbin/iptables` or `/sbin/ip6tables`
- but some are quite different.  
  
The following recommendations describe how to strengthen the default
ruleset configuration file. An alternative to editing this configuration
file is to create a shell script that makes calls to the iptables
program to load in rules, and then invokes service iptables save to
write those loaded rules to `/etc/sysconfig/iptables.`  
  
The following alterations can be made directly to
`/etc/sysconfig/iptables` and `/etc/sysconfig/ip6tables`. Instructions
apply to both unless otherwise noted. Language and address conventions
for regular iptables are used throughout this section; configuration for
ip6tables will be either analogous or explicitly covered.
