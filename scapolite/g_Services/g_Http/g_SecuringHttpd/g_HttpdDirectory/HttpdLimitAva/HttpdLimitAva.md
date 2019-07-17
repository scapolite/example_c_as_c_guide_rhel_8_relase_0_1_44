---
scapolite:
    class: rule
    version: '0.51'
id: httpd_limit_available_methods
id_namespace: org.ssgproject.RHEL-8
title: Limit Available Methods
rule: <see below>
rationale: <see below>
description: <see below>
applicability:
  - system: org.scapolite.xccdf.applicability
---


## /rule

Limit Available Methods

## /rationale

Minimizing
the number of available methods to the web client reduces risk by
limiting the capabilities allowed by the web server.

## /description

Web
server methods are defined in section 9 of RFC 2616 (
<http://www.ietf.org/rfc/rfc2616.txt>). If a web server does not require
the implementation of all available methods, they should be disabled.  
  
Note: `GET` and `POST` are the most common methods. A majority of the
others are limited to the WebDAV protocol.

``` 
<Directory /var/www/html>
# ...
   # Only allow specific methods (this command is case-sensitive!)
   <LimitExcept GET POST>
      Order allow,deny
   </LimitExcept>
# ...
</Directory>
```
