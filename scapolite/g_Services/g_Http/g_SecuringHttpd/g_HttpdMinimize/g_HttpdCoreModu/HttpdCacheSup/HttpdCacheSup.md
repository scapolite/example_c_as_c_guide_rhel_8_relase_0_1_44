---
scapolite:
    class: rule
    version: '0.51'
id: httpd_cache_support
id_namespace: org.ssgproject.RHEL-8
title: Disable Cache Support
rule: <see below>
rationale: <see below>
description: <see below>
applicability:
  - system: org.scapolite.xccdf.applicability
---


## /rule

Disable Cache Support

## /rationale

Minimizing
the number of loadable modules available to the web server reduces risk
by limiting the capabilities allowed by the web server.

## /description

The
`cache` module allows `httpd` to cache data, optimizing access to
frequently accessed content. However, it introduces potential security
flaws such as the possibility of circumventing `Allow` and `Deny`
directives.  
  
If this functionality is unnecessary, comment out the module:

``` 
#LoadModule cache_module modules/mod_cache.so
```

If caching is required, it should not be enabled for any limited-access
content.
