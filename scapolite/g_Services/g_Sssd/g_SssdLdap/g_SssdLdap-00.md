---
scapolite:
    class: group
    version: '0.51'
id: sssd-ldap
id_namespace: org.ssgproject.RHEL-8
title: System Security Services Daemon (SSSD) - LDAP
description: <see below>
values:
  - id: var_sssd_ldap_tls_ca_dir
    id_namespace: org.ssgproject.RHEL-8
    title: SSSD LDAP Backend Client CA Certificate Location
    description: |
        Path
        of a directory that contains Certificate Authority certificates.
    type: string
    definitions:
      - value: /etc/openldap/cacerts
contents:
  - class: rule_ref
    idref: sssd_ldap_configure_tls_ca
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Configure SSSD LDAP Backend Client CA Certificate
  - class: rule_ref
    idref: sssd_ldap_configure_tls_ca_dir
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Configure SSSD LDAP Backend Client CA Certificate Location
  - class: rule_ref
    idref: sssd_ldap_start_tls
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Configure SSSD LDAP Backend to Use TLS For All Transactions
---


## /description

The
System Security Services Daemon (SSSD) is a system daemon that provides
access to different identity and authentication providers such as Red
Hat\'s IdM, Microsoft\'s AD, openLDAP, MIT Kerberos, etc. It uses a
common framework that can provide caching and offline support to systems
utilizing SSSD. SSSD using caching to reduce load on authentication
servers permit offline authentication as well as store extended user
data.  
  
SSSD can support many backends including LDAP. The `sssd-ldap` backend
allows SSSD to fetch identity information from an LDAP server.
