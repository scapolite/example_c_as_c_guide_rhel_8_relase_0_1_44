---
scapolite:
    class: group
    version: '0.51'
id: routing
id_namespace: org.ssgproject.RHEL-8
title: Network Routing
description: <see below>
contents:
  - class: group_ref
    idref: disabling_quagga
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Disable Quagga if Possible
---


## /description

A
router is a very desirable target for a potential adversary because they
fulfill a variety of infrastructure networking roles such as access to
network segments, gateways to other networks, filtering, etc. Therefore,
if one is required, the system acting as a router should be dedicated to
that purpose alone and be stored in a physically secure location. The
system\'s default routing software is Quagga, and provided in an RPM
package of the same name.
