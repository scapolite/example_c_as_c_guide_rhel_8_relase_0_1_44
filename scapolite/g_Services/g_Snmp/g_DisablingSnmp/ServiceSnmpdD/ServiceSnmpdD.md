---
scapolite:
    class: rule
    version: '0.51'
id: service_snmpd_disabled
id_namespace: org.ssgproject.RHEL-8
title: Disable snmpd Service
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
        idref: ocil:ssg-service_snmpd_disabled_ocil:questionnaire:1
        href: service_snmpd_disabled.ocil.xml
crossrefs:
  - system: org.scapolite.unknown
    idref: 2.2.14
    relation: ''
  - system: org.scapolite.unknown
    idref: SRG-OS-000480-VMM-002000
    relation: ''
---


## /rule

Disable snmpd Service

## /rationale

Running
SNMP software provides a network-based avenue of attack, and should be
disabled if not needed.

## /description

The `snmpd` service can be disabled with the following command:

``` 
$ sudo systemctl disable snmpd.service
```
