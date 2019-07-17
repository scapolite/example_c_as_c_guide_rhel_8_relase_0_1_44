---
scapolite:
    class: rule
    version: '0.51'
id: httpd_enable_log_config
id_namespace: org.ssgproject.RHEL-8
title: Enable log\_config\_module For HTTPD Logging
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
        idref: ocil:ssg-httpd_enable_log_config_ocil:questionnaire:1
        href: httpd_enable_log_config.ocil.xml
crossrefs:
  - system: http://iase.disa.mil/stigs/os/unix-linux/Pages/index.aspx
    idref: RHEL-08-WG240
    relation: ''
---


## /rule

Enable log\_config\_module For HTTPD Logging

## /rationale

A
major tool in exploring the web site use, attempted use, unusual
conditions, and problems are reported in the access and error logs. In
the event of a security incident, these logs can provide the SA and the
web manager with valuable information. Without these log files, SAs and
web managers are seriously hindered in their efforts to respond
appropriately to suspicious or criminal actions targeted at the web
site.

## /description

The
`log_config_module` should exist and be configured in the
`/etc/httpd/conf/httpd.conf` file by adding the following module to
configure logging:

``` 
log_config_module
```
