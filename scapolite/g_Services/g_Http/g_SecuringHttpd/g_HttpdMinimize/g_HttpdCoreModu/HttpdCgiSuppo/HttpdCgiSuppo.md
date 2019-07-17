---
scapolite:
    class: rule
    version: '0.51'
id: httpd_cgi_support
id_namespace: org.ssgproject.RHEL-8
title: Disable CGI Support
rule: <see below>
rationale: <see below>
description: <see below>
applicability:
  - system: org.scapolite.xccdf.applicability
---


## /rule

Disable CGI Support

## /rationale

Minimizing
the number of loadable modules available to the web server reduces risk
by limiting the capabilities allowed by the web server.

## /description

The
`cgi` module allows HTML to interact with the CGI web programming
language.  
  
If this functionality is unnecessary, comment out the module:

``` 
#LoadModule cgi_module modules/mod_cgi.so
```

If the web server requires the use of CGI, enable `mod_cgi`.
