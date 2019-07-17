---
scapolite:
    class: group
    version: '0.51'
id: talk
id_namespace: org.ssgproject.RHEL-8
title: Chat/Messaging Services
description: <see below>
contents:
  - class: rule_ref
    idref: package_talk-server_removed
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Uninstall talk-server Package
  - class: rule_ref
    idref: package_talk_removed
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Uninstall talk Package
---


## /description

The
talk software makes it possible for users to send and receive messages
across systems through a terminal session.
