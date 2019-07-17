---
scapolite:
    class: rule
    version: '0.51'
id: httpd_configure_max_keepalive_requests
id_namespace: org.ssgproject.RHEL-8
title: Configure The Number of Allowed Simultaneous Requests
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
        idref: ocil:ssg-httpd_configure_max_keepalive_requests_ocil:questionnaire:1
        href: httpd_configure_max_keepalive_requests.ocil.xml
crossrefs:
  - system: http://iase.disa.mil/stigs/os/unix-linux/Pages/index.aspx
    idref: RHEL-08-WG110
    relation: ''
---


## /rule

Configure The Number of Allowed Simultaneous Requests

## /rationale

Resource
exhaustion can occur when an unlimited number of concurrent requests are
allowed on a web site, facilitating a denial of service attack.
Mitigating this kind of attack will include limiting the number of
concurrent HTTP/HTTPS requests per IP address and may include, where
feasible, limiting parameter values associated with keepalive, (i.e., a
parameter used to limit the amount of time a connection may be
inactive).

## /description

The
`MaxKeepAliveRequests` directive should be set and configured to or
greater by setting the following in `/etc/httpd/conf/httpd.conf`:

``` {html="http://www.w3.org/1999/xhtml" ns0="http://checklists.nist.gov/xccdf/1.1"}
MaxKeepAliveRequests 
```
