---
scapolite:
    class: rule
    version: '0.51'
id: configure_crypto_policy
id_namespace: org.ssgproject.RHEL-8
title: Configure System Cryptography Policy
rule: <see below>
rationale: <see below>
description: <see below>
applicability:
  - system: org.scapolite.xccdf.applicability
    severity: high
implementations:
  - relative_id: '01'
    title: Automated fix
    automations:
      - system: urn:xccdf:fix:script:sh
        href: configure_crypto_policy.sh
  - relative_id: '02'
    title: Automated fix
    automations:
      - system: urn:xccdf:fix:script:ansible
        href: configure_crypto_policy.ansible
        complexity: low
        disruption: low
checks:
  - relative_id: '01'
    automations:
      - system: http://oval.mitre.org/XMLSchema/oval-definitions-5
        idref: oval:ssg-configure_crypto_policy:def:1
        href: configure_crypto_policy.oval.xml
        exports:
          - value_id_namespace: org.ssgproject.RHEL-8
            value_idref: var_system_crypto_policy
            variable_idref: oval:ssg-var_system_crypto_policy:var:1
  - relative_id: '02'
    automations:
      - system: http://scap.nist.gov/schema/ocil/2
        idref: ocil:ssg-configure_crypto_policy_ocil:questionnaire:1
        href: configure_crypto_policy.ocil.xml
crossrefs:
  - system: https://nvd.nist.gov/cce/index.cfm
    idref: CCE-80935-0
    relation: ''
  - system: https://nvd.nist.gov/cce/index.cfm
    idref: CCE-80935-0
    relation: ''
---


## /rule

Configure System Cryptography Policy

## /rationale

Centralized
cryptographic policies simplify applying secure ciphers across an
operating system and the applications that run on that operating system.
Use of weak or untested encryption algorithms undermines the purposes of
utilizing encryption to protect data.

## /description

To
configure the system cyptography policy to use ciphers only from the ``
policy, run the following command:

``` {html="http://www.w3.org/1999/xhtml" ns0="http://checklists.nist.gov/xccdf/1.1"}
$ sudo update-crypto-policies --set 
```
