---
scapolite:
    class: rule
    version: '0.51'
id: httpd_encrypt_file_uploads
id_namespace: org.ssgproject.RHEL-8
title: Encrypt All File Uploads
rule: <see below>
rationale: <see below>
description: <see below>
applicability:
  - system: org.scapolite.xccdf.applicability
    severity: high
checks:
  - relative_id: '01'
    automations:
      - system: http://scap.nist.gov/schema/ocil/2
        idref: ocil:ssg-httpd_encrypt_file_uploads_ocil:questionnaire:1
        href: httpd_encrypt_file_uploads.ocil.xml
crossrefs:
  - system: http://iase.disa.mil/stigs/os/unix-linux/Pages/index.aspx
    idref: RHEL-08-WG235
    relation: ''
---


## /rule

Encrypt All File Uploads

## /rationale

Logging
in to a web server via an unencrypted protocol or service, to upload
documents to the web site, is a risk if proper encryption is not
utilized to protect the data being transmitted. An encrypted protocol or
service must be used for remote access to web administration tasks.

## /description

Use
only secure encrypted logons and connections for uploading files to the
web site.
