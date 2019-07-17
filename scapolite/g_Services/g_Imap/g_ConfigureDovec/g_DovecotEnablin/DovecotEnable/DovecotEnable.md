---
scapolite:
    class: rule
    version: '0.51'
id: dovecot_enable_ssl
id_namespace: org.ssgproject.RHEL-8
title: Enable the SSL flag in /etc/dovecot.conf
rule: <see below>
rationale: <see below>
description: <see below>
applicability:
  - system: org.scapolite.xccdf.applicability
---


## /rule

Enable the SSL flag in /etc/dovecot.conf

## /rationale

SSL
encrypt network traffic between the Dovecot server and its clients
protecting user credentials, mail as it is downloaded, and clients may
use SSL certificates to authenticate the server, preventing another
system from impersonating the server.

## /description

To
allow clients to make encrypted connections the `ssl` flag in Dovecot\'s
configuration file needs to be set to `yes`.  
  
Edit `/etc/dovecot/conf.d/10-ssl.conf` and add or correct the following
line:

``` 
ssl = yes
```
