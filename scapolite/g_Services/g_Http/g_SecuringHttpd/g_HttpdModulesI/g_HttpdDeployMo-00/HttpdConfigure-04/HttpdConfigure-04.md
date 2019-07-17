---
scapolite:
    class: rule
    version: '0.51'
id: httpd_configure_tls
id_namespace: org.ssgproject.RHEL-8
title: Enable Transport Layer Security (TLS) Encryption
rule: <see below>
rationale: <see below>
description: <see below>
applicability:
  - system: org.scapolite.xccdf.applicability
    severity: medium
checks:
  - relative_id: '01'
    automations:
      - system: http://scap.nist.gov/schema/ocil/2
        idref: ocil:ssg-httpd_configure_tls_ocil:questionnaire:1
        href: httpd_configure_tls.ocil.xml
crossrefs:
  - system: http://iase.disa.mil/stigs/os/unix-linux/Pages/index.aspx
    idref: RHEL-08-WG340
    relation: ''
---


## /rule

Enable Transport Layer Security (TLS) Encryption

## /rationale

Transport
Layer Security (TLS) encryption is a required security setting for a
private web server. Encryption of private information is essential to
ensuring data confidentiality. If private information is not encrypted,
it can be intercepted and easily read by an unauthorized party. A web
server must use a FIPS 140-2 approved TLS version, and all
non-FIPS-approved SSL versions must be disabled.

## /description

Disable
old SSL and TLS version and enable the latest TLS encryption by setting
the following in `/etc/httpd/conf.modules.d/ssl.conf`:

``` 
SSLProtocol all -SSLv2 -SSLv3 -TLSv1 -TLSv1.1
```

Make sure to also set `SSLEngine` to `on` in
`/etc/httpd/conf.modules.d/ssl.conf` like the following:

``` 
SSLEngine on
```
