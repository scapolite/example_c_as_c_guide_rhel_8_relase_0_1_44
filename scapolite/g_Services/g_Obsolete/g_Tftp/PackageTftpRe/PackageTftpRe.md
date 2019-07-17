---
scapolite:
    class: rule
    version: '0.51'
id: package_tftp_removed
id_namespace: org.ssgproject.RHEL-8
title: Remove tftp Daemon
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
        href: package_tftp_removed.sh
        complexity: low
        disruption: low
  - relative_id: '02'
    title: Automated fix
    automations:
      - system: urn:xccdf:fix:script:ansible
        href: package_tftp_removed.ansible
        complexity: low
        disruption: low
  - relative_id: '03'
    title: Automated fix
    automations:
      - system: urn:xccdf:fix:script:puppet
        href: package_tftp_removed.puppet
        complexity: low
        disruption: low
  - relative_id: '04'
    title: Automated fix
    automations:
      - system: urn:redhat:anaconda:pre
        href: package_tftp_removed.anaconda
        complexity: low
        disruption: low
checks:
  - relative_id: '01'
    automations:
      - system: http://oval.mitre.org/XMLSchema/oval-definitions-5
        idref: oval:ssg-package_tftp_removed:def:1
        href: package_tftp_removed.oval.xml
  - relative_id: '02'
    automations:
      - system: http://scap.nist.gov/schema/ocil/2
        idref: ocil:ssg-package_tftp_removed_ocil:questionnaire:1
        href: package_tftp_removed.ocil.xml
---


## /rule

Remove tftp Daemon

## /rationale

It
is recommended that TFTP be removed, unless there is a specific need for
TFTP (such as a boot server). In that case, use extreme caution when
configuring the services.

## /description

Trivial
File Transfer Protocol (TFTP) is a simple file transfer protocol,
typically used to automatically transfer configuration or boot files
between systems. TFTP does not support authentication and can be easily
hacked. The package `tftp` is a client program that allows for
connections to a `tftp` server.
