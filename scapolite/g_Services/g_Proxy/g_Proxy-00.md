---
scapolite:
    class: group
    version: '0.51'
id: proxy
id_namespace: org.ssgproject.RHEL-8
title: Proxy Server
description: <see below>
contents:
  - class: group_ref
    idref: disabling_squid
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Disable Squid if Possible
---


## /description

A
proxy server is a very desirable target for a potential adversary
because much (or all) sensitive data for a given infrastructure may flow
through it. Therefore, if one is required, the system acting as a proxy
server should be dedicated to that purpose alone and be stored in a
physically secure location. The system\'s default proxy server software
is Squid, and provided in an RPM package of the same name.
