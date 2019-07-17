---
scapolite:
    class: group
    version: '0.51'
id: httpd_deploy_mod_ssl
id_namespace: org.ssgproject.RHEL-8
title: Deploy mod\_ssl
description: <see below>
contents:
  - class: rule_ref
    idref: httpd_configure_valid_server_cert
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Configure A Valid Server Certificate
  - class: rule_ref
    idref: httpd_install_mod_ssl
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Install mod\_ssl
  - class: rule_ref
    idref: httpd_require_client_certs
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Require Client Certificates
  - class: rule_ref
    idref: httpd_configure_tls
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Enable Transport Layer Security (TLS) Encryption
---


## /description

Because
HTTP is a plain text protocol, all traffic is susceptible to passive
monitoring. If there is a need for confidentiality, SSL should be
configured and enabled to encrypt content.  
  
Note: `mod_nss` is a FIPS 140-2 certified alternative to `mod_ssl`. The
modules share a considerable amount of code and should be nearly
identical in functionality. If FIPS 140-2 validation is required, then
`mod_nss` should be used. If it provides some feature or its greater
compatibility is required, then `mod_ssl` should be used.
