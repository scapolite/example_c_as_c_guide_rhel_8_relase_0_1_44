---
scapolite:
    class: group
    version: '0.51'
id: avahi_configuration
id_namespace: org.ssgproject.RHEL-8
title: Configure Avahi if Necessary
description: <see below>
contents:
  - class: rule_ref
    idref: avahi_restrict_published_information
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Restrict Information Published by Avahi
  - class: rule_ref
    idref: avahi_check_ttl
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Check Avahi Responses\' TTL Field
  - class: rule_ref
    idref: avahi_prevent_port_sharing
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Prevent Other Programs from Using Avahi\'s Port
  - class: rule_ref
    idref: avahi_disable_publishing
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Disable Avahi Publishing
  - class: rule_ref
    idref: avahi_ip_only
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Serve Avahi Only via Required Protocol
---


## /description

If
your system requires the Avahi daemon, its configuration can be
restricted to improve security. The Avahi daemon configuration file is
`/etc/avahi/avahi-daemon.conf`. The following security recommendations
should be applied to this file: See the `avahi-daemon.conf(5)` man page,
or documentation at <http://www.avahi.org>, for more detailed
information about the configuration options.
