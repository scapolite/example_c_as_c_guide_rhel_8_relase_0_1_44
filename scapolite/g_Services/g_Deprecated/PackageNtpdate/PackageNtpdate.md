---
scapolite:
    class: rule
    version: '0.51'
id: package_ntpdate_removed
id_namespace: org.ssgproject.RHEL-8
title: Uninstall the ntpdate package
rule: <see below>
rationale: <see below>
description: <see below>
applicability:
  - system: org.scapolite.xccdf.applicability
    severity: low
implementations:
  - relative_id: '01'
    title: Automated fix
    automations:
      - system: urn:xccdf:fix:script:sh
        href: package_ntpdate_removed.sh
        complexity: low
        disruption: low
  - relative_id: '02'
    title: Automated fix
    automations:
      - system: urn:xccdf:fix:script:ansible
        href: package_ntpdate_removed.ansible
        complexity: low
        disruption: low
  - relative_id: '03'
    title: Automated fix
    automations:
      - system: urn:xccdf:fix:script:puppet
        href: package_ntpdate_removed.puppet
        complexity: low
        disruption: low
  - relative_id: '04'
    title: Automated fix
    automations:
      - system: urn:redhat:anaconda:pre
        href: package_ntpdate_removed.anaconda
        complexity: low
        disruption: low
checks:
  - relative_id: '01'
    automations:
      - system: http://oval.mitre.org/XMLSchema/oval-definitions-5
        idref: oval:ssg-package_ntpdate_removed:def:1
        href: package_ntpdate_removed.oval.xml
---


## /rule

Uninstall the ntpdate package

## /rationale

ntpdate
is an old not security-compliant ntp client. It should be replaced by
modern ntp clients such as ntpd, able to use cryptographic mechanisms
integrated in NTP.

## /description

ntpdate
is a historical ntp synchronization client for unixes. It sould be
uninstalled.
