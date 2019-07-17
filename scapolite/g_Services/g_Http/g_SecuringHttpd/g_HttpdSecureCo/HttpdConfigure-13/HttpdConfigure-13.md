---
scapolite:
    class: rule
    version: '0.51'
id: httpd_configure_banner_page
id_namespace: org.ssgproject.RHEL-8
title: Configure A Banner Page For Each Website
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
        idref: ocil:ssg-httpd_configure_banner_page_ocil:questionnaire:1
        href: httpd_configure_banner_page.ocil.xml
crossrefs:
  - system: http://iase.disa.mil/stigs/os/unix-linux/Pages/index.aspx
    idref: RHEL-08-WG265
    relation: ''
---


## /rule

Configure A Banner Page For Each Website

## /rationale

A
consent banner will be in place to make prospective entrants aware that
the website they are about to enter is a DoD web site and their activity
is subject to monitoring. The document, DoDI 8500.01, establishes the
policy on the use of DoD information systems. It requires the use of a
standard Notice and Consent Banner and standard text to be included in
user agreements. The requirement for the banner is for websites with
security and access controls. These are restricted and not publicly
accessible. If the website does not require authentication/authorization
for use, then the banner does not need to be present. A manual check of
the document root directory for a banner page file (such as banner.html)
or navigation to the website via a browser can be used to confirm the
information provided from interviewing the web staff.

## /description

Configure
a login banner for each website when authentication is required for user
access.
