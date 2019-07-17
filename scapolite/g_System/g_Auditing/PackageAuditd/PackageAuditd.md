---
scapolite:
    class: rule
    version: '0.51'
id: package_auditd_installed
id_namespace: org.ssgproject.RHEL-8
title: install the auditd service
rule: <see below>
rationale: <see below>
description: <see below>
applicability:
  - system: org.scapolite.xccdf.applicability
    severity: medium
  - system: https://scap.nist.gov/schema/cpe/2.2
    cpes:
      - cpe:/a:machine
crossrefs:
  - system: http://www.ssi.gouv.fr/administration/bonnes-pratiques/
    idref: NT28(R50)
    relation: ''
---


## /rule

install the auditd service

## /rationale

The
auditd service is an access monitoring and accounting daemon, watching
system calls to audit any access, in comparision with potential local
access control policy such as SELinux policy.

## /description

The
auditd service should be installed.
