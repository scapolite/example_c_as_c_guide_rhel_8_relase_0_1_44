---
scapolite:
    class: group
    version: '0.51'
id: postfix_server_relay_smtp_auth_for_untrusted
id_namespace: org.ssgproject.RHEL-8
title: Require SMTP AUTH Before Relaying from Untrusted Clients
description: <see below>
contents: []
---


## /description

SMTP
authentication allows remote clients to relay mail safely by requiring
them to authenticate before submitting mail. Postfix\'s SMTP AUTH uses
an authentication library called SASL, which is not part of Postfix
itself. To enable the use of SASL authentication, see
<http://www.postfix.org/SASL_README.html>
