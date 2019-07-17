---
scapolite:
    class: rule
    version: '0.51'
id: httpd_mime_magic
id_namespace: org.ssgproject.RHEL-8
title: Disable MIME Magic
rule: <see below>
rationale: <see below>
description: <see below>
applicability:
  - system: org.scapolite.xccdf.applicability
---


## /rule

Disable MIME Magic

## /rationale

Minimizing
the number of loadable modules available to the web server reduces risk
by limiting the capabilities allowed by the web server.

## /description

The
`mime_magic` module provides a second layer of MIME support that in most
configurations is likely extraneous. If its functionality is
unnecessary, comment out the related module:

``` 
#LoadModule mime_magic_module modules/mod_mime_magic.so
```
