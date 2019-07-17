---
scapolite:
    class: rule
    version: '0.51'
id: snmpd_use_newer_protocol
id_namespace: org.ssgproject.RHEL-8
title: Configure SNMP Service to Use Only SNMPv3 or Newer
rule: <see below>
rationale: <see below>
description: <see below>
applicability:
  - system: org.scapolite.xccdf.applicability
    severity: medium
checks:
  - relative_id: '01'
    automations:
      - system: http://oval.mitre.org/XMLSchema/oval-definitions-5
        idref: oval:ssg-snmpd_use_newer_protocol:def:1
        href: snmpd_use_newer_protocol.oval.xml
  - relative_id: '02'
    automations:
      - system: http://scap.nist.gov/schema/ocil/2
        idref: ocil:ssg-snmpd_use_newer_protocol_ocil:questionnaire:1
        href: snmpd_use_newer_protocol.ocil.xml
---


## /rule

Configure SNMP Service to Use Only SNMPv3 or Newer

## /rationale

Earlier
versions of SNMP are considered insecure, as they potentially allow
unauthorized access to detailed system management information.

## /description

Edit
`/etc/snmp/snmpd.conf`, removing any references to `rocommunity`,
`rwcommunity`, or `com2sec`. Upon doing that, restart the SNMP service:

``` 
$ sudo service snmpd restart
```
