---
scapolite:
    class: group
    version: '0.51'
id: dovecot_enabling_ssl
id_namespace: org.ssgproject.RHEL-8
title: Enable SSL Support
description: <see below>
contents:
  - class: rule_ref
    idref: dovecot_configure_ssl_cert
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Configure Dovecot to Use the SSL Certificate file
  - class: rule_ref
    idref: dovecot_configure_ssl_key
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Configure Dovecot to Use the SSL Key file
  - class: rule_ref
    idref: dovecot_enable_ssl
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Enable the SSL flag in /etc/dovecot.conf
  - class: rule_ref
    idref: dovecot_disable_plaintext_auth
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Disable Plaintext Authentication
---


## /description

SSL
should be used to encrypt network traffic between the Dovecot server and
its clients. Users must authenticate to the Dovecot server in order to
read their mail, and passwords should never be transmitted in clear
text. In addition, protecting mail as it is downloaded is a privacy
measure, and clients may use SSL certificates to authenticate the
server, preventing another system from impersonating the server.
