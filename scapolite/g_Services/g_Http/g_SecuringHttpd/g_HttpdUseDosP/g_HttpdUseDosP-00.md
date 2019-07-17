---
scapolite:
    class: group
    version: '0.51'
id: httpd_use_dos_protection_modules
id_namespace: org.ssgproject.RHEL-8
title: Use Denial-of-Service Protection Modules
description: <see below>
contents: []
---


## /description

Denial-of-service
attacks are difficult to detect and prevent while maintaining acceptable
access to authorized users. However, some traffic-shaping modules can be
used to address the problem. Well-known DoS protection modules include:

``` 
mod_cband mod_bwshare mod_limitipconn mod_evasive
```

Denial-of-service prevention should be implemented for a web server if
such a threat exists. However, specific configuration details are very
dependent on the environment and often best left at the discretion of
the administrator.
