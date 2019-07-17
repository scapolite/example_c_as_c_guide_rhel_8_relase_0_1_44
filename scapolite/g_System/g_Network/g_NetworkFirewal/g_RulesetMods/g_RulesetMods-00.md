---
scapolite:
    class: group
    version: '0.51'
id: ruleset_modifications
id_namespace: org.ssgproject.RHEL-8
title: Strengthen the Default Ruleset
description: <see below>
contents:
  - class: rule_ref
    idref: set_firewalld_default_zone
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Set Default firewalld Zone for Incoming Packets
  - class: rule_ref
    idref: configure_firewalld_ports
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Configure the Firewalld Ports
  - class: rule_ref
    idref: configure_firewalld_rate_limiting
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Configure firewalld To Rate Limit Connections
---


## /description

The
default rules can be strengthened. The system scripts that activate the
firewall rules expect them to be defined in configuration files under
the `/etc/firewalld/services` and `/etc/firewalld/zones` directories.  
  
The following recommendations describe how to strengthen the default
ruleset configuration file. An alternative to editing this configuration
file is to create a shell script that makes calls to the `firewall-cmd`
program to load in rules under the `/etc/firewalld/services` and
`/etc/firewalld/zones` directories.  
  
Instructions apply to both unless otherwise noted. Language and address
conventions for regular firewalld rules are used throughout this
section.
