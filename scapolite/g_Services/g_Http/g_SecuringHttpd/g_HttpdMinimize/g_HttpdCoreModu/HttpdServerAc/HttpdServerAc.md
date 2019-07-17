---
scapolite:
    class: rule
    version: '0.51'
id: httpd_server_activity_status
id_namespace: org.ssgproject.RHEL-8
title: Disable Server Activity Status
rule: <see below>
rationale: <see below>
description: <see below>
applicability:
  - system: org.scapolite.xccdf.applicability
---


## /rule

Disable Server Activity Status

## /rationale

Minimizing
the number of loadable modules available to the web server reduces risk
by limiting the capabilities allowed by the web server.

## /description

The
`status` module provides real-time access to statistics on the internal
operation of the web server. This may constitute an unnecessary
information leak and should be disabled unless necessary. To do so,
comment out the related module:

``` 
#LoadModule status_module modules/mod_status.so
```

If there is a critical need for this module, ensure that access to the
status page is properly restricted to a limited set of hosts in the
status handler configuration.
