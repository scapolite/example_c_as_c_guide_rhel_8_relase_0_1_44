---
scapolite:
    class: rule
    version: '0.51'
id: configure_kerberos_crypto_policy
id_namespace: org.ssgproject.RHEL-8
title: Configure Kerberos to use System Crypto Policy
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
        href: configure_kerberos_crypto_policy.sh
        complexity: low
        disruption: low
  - relative_id: '02'
    title: Automated fix
    automations:
      - system: urn:xccdf:fix:script:ansible
        href: configure_kerberos_crypto_policy.ansible
        complexity: low
        disruption: low
checks:
  - relative_id: '01'
    automations:
      - system: http://scap.nist.gov/schema/ocil/2
        idref: ocil:ssg-configure_kerberos_crypto_policy_ocil:questionnaire:1
        href: configure_kerberos_crypto_policy.ocil.xml
crossrefs:
  - system: https://nvd.nist.gov/cce/index.cfm
    idref: CCE-80936-8
    relation: ''
  - system: https://nvd.nist.gov/cce/index.cfm
    idref: CCE-80936-8
    relation: ''
---


## /rule

Configure Kerberos to use System Crypto Policy

## /rationale

Overriding
the system crypto policy makes the behavior of Kerberos violate
expectations, and makes system configuration more fragmented.

## /description

Crypto
Policies provide a centralized control over crypto algorithms usage of
many packages. Kerberos is supported by crypto policy, but it\'s
configuration may be set up to ignore it. To check that Crypto Policies
settings for Kerberos are configured correctly, examine that there is a
symlink at /etc/krb5.conf.d/crypto-policies targeting
/etc/cypto-policies/back-ends/krb5.config. If the symlink exists,
kerberos is configured to use the system-wide crypto policy settings.
