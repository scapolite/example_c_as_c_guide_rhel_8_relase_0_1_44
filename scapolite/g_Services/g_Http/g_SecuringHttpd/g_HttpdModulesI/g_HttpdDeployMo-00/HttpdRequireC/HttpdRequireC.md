---
scapolite:
    class: rule
    version: '0.51'
id: httpd_require_client_certs
id_namespace: org.ssgproject.RHEL-8
title: Require Client Certificates
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
        idref: ocil:ssg-httpd_require_client_certs_ocil:questionnaire:1
        href: httpd_require_client_certs.ocil.xml
crossrefs:
  - system: http://iase.disa.mil/stigs/os/unix-linux/Pages/index.aspx
    idref: RHEL-08-WG140
    relation: ''
---


## /rule

Require Client Certificates

## /rationale

Web
sites requiring authentication within the DoD must utilize PKI as an
authentication mechanism for web users. Information systems residing
behind web servers requiring authorization based on individual identity
must use the identity provided by certificate-based authentication to
support access control decisions.

## /description

`SSLVerifyClient`
should be set and configured to `require` by setting the following in
`/etc/httpd/conf/httpd.conf`:

``` 
SSLVerifyClient require
```
