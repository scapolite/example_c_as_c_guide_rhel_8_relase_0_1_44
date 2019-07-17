---
scapolite:
    class: rule
    version: '0.51'
id: httpd_proxy_support
id_namespace: org.ssgproject.RHEL-8
title: Disable Proxy Support
rule: <see below>
rationale: <see below>
description: <see below>
applicability:
  - system: org.scapolite.xccdf.applicability
---


## /rule

Disable Proxy Support

## /rationale

Minimizing
the number of loadable modules available to the web server reduces risk
by limiting the capabilities allowed by the web server.

## /description

The
`proxy` module provides proxying support, allowing `httpd` to forward
requests and serve as a gateway for other servers. If its functionality
is unnecessary, comment out the module:

``` 
#LoadModule proxy_module modules/mod_proxy.so
```

If proxy support is needed, load `mod_proxy` and the appropriate proxy
protocol handler module (one of `mod_proxy_http`, `mod_proxy_ftp`, or
`mod_proxy_connect`). Additionally, make certain that a server is secure
before enabling proxying, as open proxy servers are a security risk.
`mod_proxy_balancer` enables load balancing, but requires that
`mod status` be enabled.
