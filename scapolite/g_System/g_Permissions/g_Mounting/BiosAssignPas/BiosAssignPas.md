---
scapolite:
    class: rule
    version: '0.51'
id: bios_assign_password
id_namespace: org.ssgproject.RHEL-8
title: Assign Password to Prevent Changes to Boot Firmware Configuration
rule: <see below>
rationale: <see below>
description: <see below>
applicability:
  - system: org.scapolite.xccdf.applicability
  - system: https://scap.nist.gov/schema/cpe/2.2
    cpes:
      - cpe:/a:machine
---


## /rule

Assign Password to Prevent Changes to Boot Firmware Configuration

## /rationale

Assigning
a password to the system boot firmware prevents anyone with physical
access from configuring the system to boot from local media and
circumvent the operating system\'s access controls. For systems in
physically secure locations, such as a data center or Sensitive
Compartmented Information Facility (SCIF), this risk must be weighed
against the risk of administrative personnel being unable to conduct
recovery operations in a timely fashion.

## /description

Assign
a password to the system boot firmware (historically called BIOS on PC
systems) to require a password for any configuration changes.
