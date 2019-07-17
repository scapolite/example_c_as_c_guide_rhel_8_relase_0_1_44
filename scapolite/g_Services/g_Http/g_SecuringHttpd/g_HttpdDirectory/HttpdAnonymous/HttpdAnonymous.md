---
scapolite:
    class: rule
    version: '0.51'
id: httpd_anonymous_content_sharing
id_namespace: org.ssgproject.RHEL-8
title: Web Content Directories Must Not Be Shared Anonymously
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
        idref: ocil:ssg-httpd_anonymous_content_sharing_ocil:questionnaire:1
        href: httpd_anonymous_content_sharing.ocil.xml
crossrefs:
  - system: http://iase.disa.mil/stigs/os/unix-linux/Pages/index.aspx
    idref: RHEL-08-WG210
    relation: ''
---


## /rule

Web Content Directories Must Not Be Shared Anonymously

## /rationale

Sharing
web content is a security risk when a web server is involved. Users
accessing the share anonymously could experience privileged access to
the content of such directories. Network sharable directories expose
those directories and their contents to unnecessary access. Any
unnecessary exposure increases the risk that someone could exploit that
access and either compromises the web content or cause web server
performance problems.

## /description

Web
content directories should not be shared anonymously over remote
filesystems such as `nfs` and `smb`. Remove the shares from the
applicable directories.
