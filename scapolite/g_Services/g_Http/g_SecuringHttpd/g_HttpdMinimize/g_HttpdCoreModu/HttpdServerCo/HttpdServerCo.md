---
scapolite:
    class: rule
    version: '0.51'
id: httpd_server_configuration_display
id_namespace: org.ssgproject.RHEL-8
title: Disable Web Server Configuration Display
rule: <see below>
rationale: <see below>
description: <see below>
applicability:
  - system: org.scapolite.xccdf.applicability
---


## /rule

Disable Web Server Configuration Display

## /rationale

Minimizing
the number of loadable modules available to the web server reduces risk
by limiting the capabilities allowed by the web server.

## /description

The
`info` module creates a web page illustrating the configuration of the
web server. This can create an unnecessary security leak and should be
disabled. If its functionality is unnecessary, comment out the module:

``` 
#LoadModule info_module modules/mod_info.so
```

If there is a critical need for this module, use the `Location`
directive to provide an access control list to restrict access to the
information.
