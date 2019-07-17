---
scapolite:
    class: rule
    version: '0.51'
id: configure_bind_crypto_policy
id_namespace: org.ssgproject.RHEL-8
title: Configure BIND to use System Crypto Policy
rule: <see below>
rationale: <see below>
description: <see below>
applicability:
  - system: org.scapolite.xccdf.applicability
    severity: medium
implementations:
  - relative_id: '01'
    title: Automated fix
    automations:
      - system: urn:xccdf:fix:script:sh
        href: configure_bind_crypto_policy.sh
checks:
  - relative_id: '01'
    automations:
      - system: http://oval.mitre.org/XMLSchema/oval-definitions-5
        idref: oval:ssg-configure_bind_crypto_policy:def:1
        href: configure_bind_crypto_policy.oval.xml
  - relative_id: '02'
    automations:
      - system: http://scap.nist.gov/schema/ocil/2
        idref: ocil:ssg-configure_bind_crypto_policy_ocil:questionnaire:1
        href: configure_bind_crypto_policy.ocil.xml
crossrefs:
  - system: https://nvd.nist.gov/cce/index.cfm
    idref: CCE-80934-3
    relation: ''
  - system: https://nvd.nist.gov/cce/index.cfm
    idref: CCE-80934-3
    relation: ''
---


## /rule

Configure BIND to use System Crypto Policy

## /rationale

Overriding
the system crypto policy makes the behavior of the BIND service violate
expectations, and makes system configuration more fragmented.

## /description

Crypto
Policies provide a centralized control over crypto algorithms usage of
many packages. BIND is supported by crypto policy, but the BIND
configuration may be set up to ignore it. To check that Crypto Policies
settings are configured correctly, ensure that the `/etc/named.conf`
includes the appropriate configuration: In the `options` section of
`/etc/named.conf`, make sure that the following line is not commented
out or superseded by later includes:
`include "/etc/crypto-policies/back-ends/bind.config";`
