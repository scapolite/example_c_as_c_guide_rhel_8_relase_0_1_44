---
scapolite:
    class: rule
    version: '0.51'
id: httpd_mod_rewrite
id_namespace: org.ssgproject.RHEL-8
title: Disable HTTP mod\_rewrite
rule: <see below>
rationale: <see below>
description: <see below>
applicability:
  - system: org.scapolite.xccdf.applicability
---


## /rule

Disable HTTP mod\_rewrite

## /rationale

Minimizing
the number of loadable modules available to the web server reduces risk
by limiting the capabilities allowed by the web server.

## /description

The
`mod_rewrite` module is very powerful and can protect against certain
classes of web attacks. However, it is also very complex and has a
significant history of vulnerabilities itself. If its functionality is
unnecessary, comment out the related module:

``` 
#LoadModule rewrite_module modules/mod_rewrite.so
```
