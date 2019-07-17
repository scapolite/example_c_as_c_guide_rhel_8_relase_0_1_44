---
scapolite:
    class: rule
    version: '0.51'
id: dovecot_configure_ssl_cert
id_namespace: org.ssgproject.RHEL-8
title: Configure Dovecot to Use the SSL Certificate file
rule: <see below>
rationale: <see below>
description: <see below>
applicability:
  - system: org.scapolite.xccdf.applicability
---


## /rule

Configure Dovecot to Use the SSL Certificate file

## /rationale

SSL
certificates are used by the client to authenticate the identity of the
server, as well as to encrypt credentials and message traffic. Not using
SSL to encrypt mail server traffic could allow unauthorized access to
credentials and mail messages since they are sent in plain text over the
network.

## /description

This
option tells Dovecot where to find the the mail server\'s SSL
Certificate.  
  
Edit `/etc/dovecot/conf.d/10-ssl.conf` and add or correct the following
line (*note: the path below is the default path set by the Dovecot
installation. If you are using a different path, ensure you reference
the appropriate file*):

``` 
ssl_cert = </etc/pki/dovecot/certs/dovecot.pem
```

\"
