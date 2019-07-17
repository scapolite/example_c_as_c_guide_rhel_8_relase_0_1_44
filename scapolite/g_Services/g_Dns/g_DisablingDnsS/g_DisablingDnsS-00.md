---
scapolite:
    class: group
    version: '0.51'
id: disabling_dns_server
id_namespace: org.ssgproject.RHEL-8
title: Disable DNS Server
description: <see below>
contents:
  - class: rule_ref
    idref: service_named_disabled
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Disable named Service
  - class: rule_ref
    idref: package_bind_removed
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Uninstall bind Package
---


## /description

DNS
software should be disabled on any systems which does not need to be a
nameserver. Note that the BIND DNS server software is not installed on
Red Hat Enterprise Linux 8 by default. The remainder of this section
discusses secure configuration of systems which must be nameservers.
