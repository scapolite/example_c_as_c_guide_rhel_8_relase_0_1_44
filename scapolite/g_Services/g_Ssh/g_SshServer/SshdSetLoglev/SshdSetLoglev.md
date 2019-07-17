---
scapolite:
    class: rule
    version: '0.51'
id: sshd_set_loglevel_info
id_namespace: org.ssgproject.RHEL-8
title: Set LogLevel to INFO
rule: <see below>
rationale: <see below>
description: <see below>
applicability:
  - system: org.scapolite.xccdf.applicability
    severity: low
  - system: https://scap.nist.gov/schema/cpe/2.2
    cpes:
      - cpe:/a:machine
checks:
  - relative_id: '01'
    automations:
      - system: http://oval.mitre.org/XMLSchema/oval-definitions-5
        idref: oval:ssg-sshd_set_loglevel_info:def:1
        href: sshd_set_loglevel_info.oval.xml
  - relative_id: '02'
    automations:
      - system: http://scap.nist.gov/schema/ocil/2
        idref: ocil:ssg-sshd_set_loglevel_info_ocil:questionnaire:1
        href: sshd_set_loglevel_info.ocil.xml
crossrefs:
  - system: http://nvlpubs.nist.gov/nistpubs/SpecialPublications/NIST.SP.800-53r4.pdf
    idref: AC-17(b)
    relation: ''
---


## /rule

Set LogLevel to INFO

## /rationale

SSH
provides several logging levels with varying amounts of verbosity.
`DEBUG` is specifically not recommended other than strictly for
debugging SSH communications since it provides so much data that it is
difficult to identify important security information. `INFO` level is
the basic level that only records login activity of SSH users. In many
situations, such as Incident Response, it is important to determine when
a particular user was active on a system. The logout record can
eliminate those users who disconnected, which helps narrow the field.

## /description

The
INFO parameter specifices that record login and logout activity will be
logged. To specify the log level in SSH, add or correct the following
line in the `/etc/ssh/sshd_config` file:

``` 
LogLevel INFO
```
