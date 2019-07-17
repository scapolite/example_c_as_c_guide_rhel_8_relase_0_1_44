---
scapolite:
    class: group
    version: '0.51'
id: ldap
id_namespace: org.ssgproject.RHEL-8
title: LDAP
description: <see below>
contents:
  - class: group_ref
    idref: openldap_server
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Configure OpenLDAP Server
  - class: group_ref
    idref: openldap_client
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Configure OpenLDAP Clients
---


## /description

LDAP
is a popular directory service, that is, a standardized way of looking
up information from a central database. Red Hat Enterprise Linux 8
includes software that enables a system to act as both an LDAP client
and server.
