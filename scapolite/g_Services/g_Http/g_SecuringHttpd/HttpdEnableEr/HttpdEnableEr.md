---
scapolite:
    class: rule
    version: '0.51'
id: httpd_enable_error_logging
id_namespace: org.ssgproject.RHEL-8
title: Enable HTTPD Error Logging
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
        idref: ocil:ssg-httpd_enable_error_logging_ocil:questionnaire:1
        href: httpd_enable_error_logging.ocil.xml
crossrefs:
  - system: http://iase.disa.mil/stigs/os/unix-linux/Pages/index.aspx
    idref: RHEL-08-WA00605
    relation: ''
---


## /rule

Enable HTTPD Error Logging

## /rationale

The
server error logs are invaluable because they can also be used to
identify potential problems and enable proactive remediation. Log data
can reveal anomalous behavior such as \"not found\" or \"unauthorized\"
errors that may be an evidence of attack attempts. Failure to enable
error logging can significantly reduce the ability of Web Administrators
to detect or remediate problems.

## /description

`ErrorLog`
should be enabled and set to the following in
`/etc/httpd/conf/httpd.conf`:

``` 
ErrorLog "logs/error_log"
```
