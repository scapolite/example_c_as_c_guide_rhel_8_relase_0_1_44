---
scapolite:
    class: rule
    version: '0.51'
id: httpd_antivirus_scan_uploads
id_namespace: org.ssgproject.RHEL-8
title: Scan All Uploaded Content for Malicious Software
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
        idref: ocil:ssg-httpd_antivirus_scan_uploads_ocil:questionnaire:1
        href: httpd_antivirus_scan_uploads.ocil.xml
crossrefs:
  - system: http://iase.disa.mil/stigs/os/unix-linux/Pages/index.aspx
    idref: RHEL-08-WG237
    relation: ''
---


## /rule

Scan All Uploaded Content for Malicious Software

## /rationale

Remote
web authors should not be able to upload files to the Document Root
directory structure without virus checking and checking for malicious or
mobile code. A remote web user, whose agency has a Memorandum of
Agreement (MOA) with the hosting agency and has submitted a DoD form
2875 (System Authorization Access Request (SAAR)) or an equivalent
document, will be allowed to post files to a temporary location on the
server. All posted files to this temporary location will be scanned for
viruses and content checked for malicious or mobile code. Only files
free of viruses and malicious or mobile code will be posted to the
appropriate DocumentRoot directory.

## /description

Install
anti-virus software on the system and set it to automatically scan new
files that are introduced to the web server.
