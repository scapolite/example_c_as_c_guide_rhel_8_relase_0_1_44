---
scapolite:
    class: rule
    version: '0.51'
id: httpd_disable_mime_types
id_namespace: org.ssgproject.RHEL-8
title: MIME types for csh or sh shell programs must be disabled
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
        idref: ocil:ssg-httpd_disable_mime_types_ocil:questionnaire:1
        href: httpd_disable_mime_types.ocil.xml
crossrefs:
  - system: http://iase.disa.mil/stigs/os/unix-linux/Pages/index.aspx
    idref: RHEL-08-WG370
    relation: ''
---


## /rule

MIME types for csh or sh shell programs must be disabled

## /rationale

Shell
programs might execute shell escapes and could then perform unauthorized
activities that could damage the security posture of the web server. A
shell is a program that serves as the basic interface between the user
and the operating system. In this regard, there are shells that are
security risks in the context of a web server and shells that are
unauthorized.

## /description

Users
must not be allowed to access the shell programs.
