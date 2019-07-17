---
scapolite:
    class: group
    version: '0.51'
id: telnet
id_namespace: org.ssgproject.RHEL-8
title: Telnet
description: <see below>
contents:
  - class: rule_ref
    idref: service_telnet_disabled
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Disable telnet Service
  - class: rule_ref
    idref: package_telnet_removed
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Remove telnet Clients
  - class: rule_ref
    idref: package_telnet-server_removed
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Uninstall telnet-server Package
---


## /description

The
telnet protocol does not provide confidentiality or integrity for
information transmitted on the network. This includes authentication
information such as passwords. Organizations which use telnet should be
actively working to migrate to a more secure protocol.
