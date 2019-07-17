---
scapolite:
    class: rule
    version: '0.51'
id: dovecot_disable_plaintext_auth
id_namespace: org.ssgproject.RHEL-8
title: Disable Plaintext Authentication
rule: <see below>
rationale: <see below>
description: <see below>
applicability:
  - system: org.scapolite.xccdf.applicability
---


## /rule

Disable Plaintext Authentication

## /rationale

Using
plain text authentication to the mail server could allow an attacker
access to credentials by monitoring network traffic.

## /description

To
prevent Dovecot from attempting plaintext authentication of clients,
edit `/etc/dovecot/conf.d/10-auth.conf` and add\\or correct the
following line:

``` 
disable_plaintext_auth = yes
```
