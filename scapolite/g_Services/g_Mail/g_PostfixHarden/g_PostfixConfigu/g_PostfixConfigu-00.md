---
scapolite:
    class: group
    version: '0.51'
id: postfix_configure_ssl_certs
id_namespace: org.ssgproject.RHEL-8
title: Configure SSL Certificates for Use with SMTP AUTH
description: <see below>
contents:
  - class: group_ref
    idref: postfix_install_ssl_cert
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Ensure Security of Postfix SSL Certificate
---


## /description

If
SMTP AUTH is to be used, the use of SSL to protect credentials in
transit is strongly recommended. There are also configurations for which
it may be desirable to encrypt all mail in transit from one MTA to
another, though such configurations are beyond the scope of this guide.
In either event, the steps for creating and installing an SSL
certificate are independent of the MTA in use, and are described here.
