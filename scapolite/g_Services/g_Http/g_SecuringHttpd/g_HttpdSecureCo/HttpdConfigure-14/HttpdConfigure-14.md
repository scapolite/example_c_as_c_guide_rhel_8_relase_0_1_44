---
scapolite:
    class: rule
    version: '0.51'
id: httpd_configure_documentroot
id_namespace: org.ssgproject.RHEL-8
title: Each Web Content Directory Must Contain An index.html File
rule: <see below>
rationale: <see below>
description: <see below>
applicability:
  - system: org.scapolite.xccdf.applicability
    severity: low
checks:
  - relative_id: '01'
    automations:
      - system: http://scap.nist.gov/schema/ocil/2
        idref: ocil:ssg-httpd_configure_documentroot_ocil:questionnaire:1
        href: httpd_configure_documentroot.ocil.xml
crossrefs:
  - system: http://iase.disa.mil/stigs/os/unix-linux/Pages/index.aspx
    idref: RHEL-08-WG170
    relation: ''
---


## /rule

Each Web Content Directory Must Contain An index.html File

## /rationale

The
goal is to completely control the web users experience in navigating any
portion of the web document root directories. Ensuring all web content
directories have at least the equivalent of an index.html file is a
significant factor to accomplish this end. Also, enumeration techniques,
such as URL parameter manipulation, rely upon being able to obtain
information about the web server\'s directory structure by locating
directories with default pages. This practice helps ensure that the
anonymous web user will not obtain directory browsing information or an
error message that reveals the server type and version.

## /description

Every
`DocumentRoot` that is configured should have an `index.html` file that
exists. Add an `index.html` file to every configured `DocumentRoot`.
