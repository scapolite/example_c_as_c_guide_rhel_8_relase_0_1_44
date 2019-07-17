---
scapolite:
    class: rule
    version: '0.51'
id: httpd_ignore_htaccess_files
id_namespace: org.ssgproject.RHEL-8
title: Ignore HTTPD .htaccess Files
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
        idref: ocil:ssg-httpd_ignore_htaccess_files_ocil:questionnaire:1
        href: httpd_ignore_htaccess_files.ocil.xml
crossrefs:
  - system: http://iase.disa.mil/stigs/os/unix-linux/Pages/index.aspx
    idref: RHEL-08-WG400
    relation: ''
---


## /rule

Ignore HTTPD .htaccess Files

## /rationale

CGI
scripts represents one of the most common and exploitable means of
compromising a web server. By definition, CGI are executable by the
operating system of the host server. While access control is provided
via the web service, the execution of CGI programs is not otherwise
limited unless the SA or Web Manager takes specific measures. CGI
programs can access and alter data files, launch other programs and use
the network. CGI programs can be written in any available programming
language. C, PERL, PHP, Javascript, VBScript and shell (sh, ksh, bash)
are popular choices.

## /description

Set
`AllowOverride` to `none` for each instant of `<Directory>`.
