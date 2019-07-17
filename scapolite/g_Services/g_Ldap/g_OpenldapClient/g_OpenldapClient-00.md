---
scapolite:
    class: group
    version: '0.51'
id: openldap_client
id_namespace: org.ssgproject.RHEL-8
title: Configure OpenLDAP Clients
description: <see below>
contents:
  - class: rule_ref
    idref: enable_ldap_client
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Enable the LDAP Client For Use in Authconfig
  - class: rule_ref
    idref: ldap_client_start_tls
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Configure LDAP Client to Use TLS For All Transactions
  - class: rule_ref
    idref: ldap_client_tls_cacertpath
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Configure Certificate Directives for LDAP Use of TLS
---


## /description

This
section provides information on which security settings are important to
configure in OpenLDAP clients by manually editing the appropriate
configuration files. Red Hat Enterprise Linux 8 provides an automated
configuration tool called authconfig and a graphical wrapper for
authconfig called `system-config-authentication`. However, these tools
do not provide as much control over configuration as manual editing of
configuration files. The authconfig tools do not allow you to specify
locations of SSL certificate files, which is useful when trying to use
SSL cleanly across several protocols. Installation and configuration of
OpenLDAP on Red Hat Enterprise Linux 8 is available at
