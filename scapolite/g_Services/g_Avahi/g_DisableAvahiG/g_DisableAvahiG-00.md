---
scapolite:
    class: group
    version: '0.51'
id: disable_avahi_group
id_namespace: org.ssgproject.RHEL-8
title: Disable Avahi Server if Possible
description: <see below>
contents:
  - class: rule_ref
    idref: service_avahi-daemon_disabled
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Disable Avahi Server Software
---


## /description

Because
the Avahi daemon service keeps an open network port, it is subject to
network attacks. Disabling it can reduce the system\'s vulnerability to
such attacks.
