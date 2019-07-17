---
scapolite:
    class: rule
    version: '0.51'
id: httpd_enable_system_logging
id_namespace: org.ssgproject.RHEL-8
title: Enable HTTPD System Logging
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
        idref: ocil:ssg-httpd_enable_system_logging_ocil:questionnaire:1
        href: httpd_enable_system_logging.ocil.xml
crossrefs:
  - system: http://iase.disa.mil/stigs/os/unix-linux/Pages/index.aspx
    idref: RHEL-08-WA00615
    relation: ''
---


## /rule

Enable HTTPD System Logging

## /rationale

The
server error logs are invaluable because they can also be used to
identify potential problems and enable proactive remediation. Log data
can reveal anomalous behavior such as \"not found\" or \"unauthorized\"
errors that may be an evidence of attack attempts. Failure to enable
error logging can significantly reduce the ability of Web Administrators
to detect or remediate problems. The CustomLog directive specifies the
log file, syslog facility, or piped logging utility.

## /description

`CustomLog`
should be enabled and set to the following in
`/etc/httpd/conf/httpd.conf`:

``` 
CustomLog "logs/access_log" combined
```
