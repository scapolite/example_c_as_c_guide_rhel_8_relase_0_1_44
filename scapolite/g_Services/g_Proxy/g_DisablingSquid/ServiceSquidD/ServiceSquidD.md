---
scapolite:
    class: rule
    version: '0.51'
id: service_squid_disabled
id_namespace: org.ssgproject.RHEL-8
title: Disable Squid
rule: <see below>
rationale: <see below>
description: <see below>
applicability:
  - system: org.scapolite.xccdf.applicability
  - system: https://scap.nist.gov/schema/cpe/2.2
    cpes:
      - cpe:/a:machine
checks:
  - relative_id: '01'
    automations:
      - system: http://scap.nist.gov/schema/ocil/2
        idref: ocil:ssg-service_squid_disabled_ocil:questionnaire:1
        href: service_squid_disabled.ocil.xml
crossrefs:
  - system: org.scapolite.unknown
    idref: 2.2.13
    relation: ''
---


## /rule

Disable Squid

## /rationale

Running
proxy server software provides a network-based avenue of attack, and
should be removed if not needed.

## /description

The `squid` service can be disabled with the following command:

``` 
$ sudo systemctl disable squid.service
```
