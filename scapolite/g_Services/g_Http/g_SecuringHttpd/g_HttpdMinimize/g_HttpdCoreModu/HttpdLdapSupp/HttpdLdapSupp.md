---
scapolite:
    class: rule
    version: '0.51'
id: httpd_ldap_support
id_namespace: org.ssgproject.RHEL-8
title: Disable LDAP Support
rule: <see below>
rationale: <see below>
description: <see below>
applicability:
  - system: org.scapolite.xccdf.applicability
---


## /rule

Disable LDAP Support

## /rationale

Minimizing
the number of loadable modules available to the web server reduces risk
by limiting the capabilities allowed by the web server.

## /description

The
`ldap` module provides HTTP authentication via an LDAP directory. If its
functionality is unnecessary, comment out the related modules:

``` 
#LoadModule ldap_module modules/mod_ldap.so
#LoadModule authnz_ldap_module modules/mod_authnz_ldap.so
```

If LDAP is to be used, SSL encryption should be used as well.
