---
scapolite:
    class: group
    version: '0.51'
id: avahi
id_namespace: org.ssgproject.RHEL-8
title: Avahi Server
description: <see below>
contents:
  - class: group_ref
    idref: avahi_configuration
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Configure Avahi if Necessary
  - class: group_ref
    idref: disable_avahi_group
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Disable Avahi Server if Possible
---


## /description

The
Avahi daemon implements the DNS Service Discovery and Multicast DNS
protocols, which provide service and host discovery on a network. It
allows a system to automatically identify resources on the network, such
as printers or web servers. This capability is also known as
mDNSresponder and is a major part of Zeroconf networking.
