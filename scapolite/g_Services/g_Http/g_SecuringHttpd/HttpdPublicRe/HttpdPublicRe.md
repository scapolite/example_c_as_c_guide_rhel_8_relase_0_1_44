---
scapolite:
    class: rule
    version: '0.51'
id: httpd_public_resources_not_shared
id_namespace: org.ssgproject.RHEL-8
title: Public web server resources must not be shared with private assets
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
        idref: ocil:ssg-httpd_public_resources_not_shared_ocil:questionnaire:1
        href: httpd_public_resources_not_shared.ocil.xml
crossrefs:
  - system: http://iase.disa.mil/stigs/os/unix-linux/Pages/index.aspx
    idref: RHEL-08-WG040
    relation: ''
---


## /rule

Public web server resources must not be shared with private assets

## /rationale

When
folders, drives, or other resources are directly shared between the
public web server and private servers the intent of data and resource
segregation can be compromised. In addition to the requirements of the
DoD Internet-NIPRNet DMZ STIG that isolates inbound traffic from
external network to the internal network, resources such as printers,
files, and folders/directories will not be shared between public web
servers and assets located within the internal network.

## /description

It
is important to segregate public web server resources from private
resources located behind the DoD DMZ in order to protect private assets.
