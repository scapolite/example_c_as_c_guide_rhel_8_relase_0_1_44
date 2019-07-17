---
scapolite:
    class: rule
    version: '0.51'
id: service_postfix_enabled
id_namespace: org.ssgproject.RHEL-8
title: Enable Postfix Service
rule: <see below>
rationale: <see below>
description: <see below>
applicability:
  - system: org.scapolite.xccdf.applicability
  - system: https://scap.nist.gov/schema/cpe/2.2
    cpes:
      - cpe:/a:machine
implementations:
  - relative_id: '01'
    title: Automated fix
    automations:
      - system: urn:xccdf:fix:script:sh
        href: service_postfix_enabled.sh
        complexity: low
        disruption: low
  - relative_id: '02'
    title: Automated fix
    automations:
      - system: urn:xccdf:fix:script:ansible
        href: service_postfix_enabled.ansible
        complexity: low
        disruption: low
checks:
  - relative_id: '01'
    automations:
      - system: http://oval.mitre.org/XMLSchema/oval-definitions-5
        idref: oval:ssg-service_postfix_enabled:def:1
        href: service_postfix_enabled.oval.xml
  - relative_id: '02'
    automations:
      - system: http://scap.nist.gov/schema/ocil/2
        idref: ocil:ssg-service_postfix_enabled_ocil:questionnaire:1
        href: service_postfix_enabled.ocil.xml
---


## /rule

Enable Postfix Service

## /rationale

Local
mail delivery is essential to some system maintenance and notification
tasks.

## /description

The
Postfix mail transfer agent is used for local mail delivery within the
system. The default configuration only listens for connections to the
default SMTP port (port 25) on the loopback interface (127.0.0.1). It is
recommended to leave this service enabled for local mail delivery. The
`postfix` service can be enabled with the following command:

``` 
$ sudo systemctl enable postfix.service
```
