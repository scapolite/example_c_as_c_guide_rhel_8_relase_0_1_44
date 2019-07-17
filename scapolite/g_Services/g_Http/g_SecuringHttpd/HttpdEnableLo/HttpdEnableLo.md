---
scapolite:
    class: rule
    version: '0.51'
id: httpd_enable_loglevel
id_namespace: org.ssgproject.RHEL-8
title: Enable HTTPD LogLevel
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
        idref: ocil:ssg-httpd_enable_loglevel_ocil:questionnaire:1
        href: httpd_enable_loglevel.ocil.xml
crossrefs:
  - system: http://iase.disa.mil/stigs/os/unix-linux/Pages/index.aspx
    idref: RHEL-08-WA00620
    relation: ''
---


## /rule

Enable HTTPD LogLevel

## /rationale

The
server error logs are invaluable because they can also be used to
identify potential problems and enable proactive remediation. Log data
can reveal anomalous behavior such as \"not found\" or \"unauthorized\"
errors that may be an evidence of attack attempts. Failure to enable
error logging can significantly reduce the ability of Web Administrators
to detect or remediate problems. While the ErrorLog directive configures
the error log file name, the LogLevel directive is used to configure the
severity level for the error logs. The log level values are the standard
syslog levels: emerg, alert, crit, error, warn, notice, info and debug.

## /description

`LogLevel`
should be enabled and set to . Add or edit the following in
`/etc/httpd/conf/httpd.conf`:

``` {html="http://www.w3.org/1999/xhtml" ns0="http://checklists.nist.gov/xccdf/1.1"}
LogLevel 
```
