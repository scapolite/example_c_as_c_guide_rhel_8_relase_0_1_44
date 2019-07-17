---
scapolite:
    class: rule
    version: '0.51'
id: httpd_disable_anonymous_ftp_access
id_namespace: org.ssgproject.RHEL-8
title: Disable Anonymous FTP Access
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
        idref: ocil:ssg-httpd_disable_anonymous_ftp_access_ocil:questionnaire:1
        href: httpd_disable_anonymous_ftp_access.ocil.xml
crossrefs:
  - system: http://iase.disa.mil/stigs/os/unix-linux/Pages/index.aspx
    idref: RHEL-08-WG430
    relation: ''
---


## /rule

Disable Anonymous FTP Access

## /rationale

The
directories containing the CGI scripts, such as PERL, must not be
accessible to anonymous users via FTP. This applies to all directories
that contain scripts that can dynamically produce web pages in an
interactive manner (i.e., scripts based upon user-provided input). Such
scripts contain information that could be used to compromise a web
service, access system resources, or deface a web site.

## /description

If
any directories that contain dynamic scripts can be accessed via FTP by
any group or user that does not require access, remove permissions to
such directories that allow anonymous access. Also, ensure that any such
access employs an encrypted connection.
