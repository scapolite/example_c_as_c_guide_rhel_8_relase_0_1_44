---
scapolite:
    class: rule
    version: '0.51'
id: httpd_server_side_includes
id_namespace: org.ssgproject.RHEL-8
title: Disable Server Side Includes
rule: <see below>
rationale: <see below>
description: <see below>
applicability:
  - system: org.scapolite.xccdf.applicability
---


## /rule

Disable Server Side Includes

## /rationale

Minimizing
the number of loadable modules available to the web server reduces risk
by limiting the capabilities allowed by the web server.

## /description

Server
Side Includes provide a method of dynamically generating web pages
through the insertion of server-side code. However, the technology is
also deprecated and introduces significant security concerns. If this
functionality is unnecessary, comment out the related module:

``` 
#LoadModule include_module modules/mod_include.so
```

If there is a critical need for Server Side Includes, they should be
enabled with the option `IncludesNoExec` to prevent arbitrary code
execution. Additionally, user supplied data should be encoded to prevent
cross-site scripting vulnerabilities.
