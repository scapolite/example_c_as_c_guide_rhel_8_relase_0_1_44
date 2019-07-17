---
scapolite:
    class: rule
    version: '0.51'
id: httpd_digest_authentication
id_namespace: org.ssgproject.RHEL-8
title: Disable HTTP Digest Authentication
rule: <see below>
rationale: <see below>
description: <see below>
applicability:
  - system: org.scapolite.xccdf.applicability
---


## /rule

Disable HTTP Digest Authentication

## /rationale

Minimizing
the number of loadable modules available to the web server reduces risk
by limiting the capabilities allowed by the web server.

## /description

The
`auth_digest` module provides encrypted authentication sessions. If this
functionality is unnecessary, comment out the related module:

``` 
#LoadModule auth_digest_module modules/mod_auth_digest.so
```
