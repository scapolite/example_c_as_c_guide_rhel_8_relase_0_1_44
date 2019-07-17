---
scapolite:
    class: group
    version: '0.51'
id: postfix_server_relay_require_tls
id_namespace: org.ssgproject.RHEL-8
title: Use TLS for SMTP AUTH
description: <see below>
contents: []
---


## /description

Postfix
provides options to use TLS for certificate-based authentication and
encrypted sessions. An encrypted session protects the information that
is transmitted with SMTP mail or with SASL authentication. To configure
Postfix to protect all SMTP AUTH transactions using TLS, see
<http://www.postfix.org/TLS_README.html>.
