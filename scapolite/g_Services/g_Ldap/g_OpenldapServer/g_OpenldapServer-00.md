---
scapolite:
    class: group
    version: '0.51'
id: openldap_server
id_namespace: org.ssgproject.RHEL-8
title: Configure OpenLDAP Server
description: <see below>
contents:
  - class: group_ref
    idref: ldap_server_config_certificate_files
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Install and Protect LDAP Certificate Files
  - class: rule_ref
    idref: package_openldap-servers_removed
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Uninstall openldap-servers Package
---


## /description

This
section details some security-relevant settings for an OpenLDAP server.
