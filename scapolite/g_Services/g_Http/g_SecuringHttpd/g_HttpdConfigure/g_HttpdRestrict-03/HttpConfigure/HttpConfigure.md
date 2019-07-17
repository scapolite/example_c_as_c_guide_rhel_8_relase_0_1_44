---
scapolite:
    class: rule
    version: '0.51'
id: http_configure_log_file_ownership
id_namespace: org.ssgproject.RHEL-8
title: HTTPD Log Files Must Be Owned By Root
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
        idref: ocil:ssg-http_configure_log_file_ownership_ocil:questionnaire:1
        href: http_configure_log_file_ownership.ocil.xml
crossrefs:
  - system: http://iase.disa.mil/stigs/os/unix-linux/Pages/index.aspx
    idref: RHEL-08-WG255
    relation: ''
---


## /rule

HTTPD Log Files Must Be Owned By Root

## /rationale

A
major tool in exploring the web site use, attempted use, unusual
conditions, and problems are the access and error logs. In the event of
a security incident, these logs can provide the SA and the web
administrator with valuable information. Because of the information that
is captured in the logs, it is critical that only authorized individuals
have access to the logs.

## /description

All
`httpd` logs must be owned by root user and group. By default, the path
for httpd logs is `/var/log/httpd/` To properly set the owner of
`/var/log/httpd`, run the command:

``` 
$ sudo chown root /var/log/httpd 
```

To properly set the owner of `/var/log/httpd/*`, run the command:

``` 
$ sudo chown root /var/log/httpd/* 
```
