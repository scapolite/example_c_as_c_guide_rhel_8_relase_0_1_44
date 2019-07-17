---
scapolite:
    class: group
    version: '0.51'
id: mcafee_security_software
id_namespace: org.ssgproject.RHEL-8
title: McAfee Endpoint Security Software
description: <see below>
values:
  - id: var_mcafee_antivirus_definition_expire
    id_namespace: org.ssgproject.RHEL-8
    title: The age of McAfee defintion file before requiring updating
    description: |
        Specify
        the amount of time (in seconds) before McAfee definition files need to
        be updated.
    type: number
    default: 30_days
    definitions:
      - selector: 1_day
        value: 86400
      - selector: 1_week
        value: 604800
      - selector: 30_days
        value: 2592000
contents:
  - class: group_ref
    idref: mcafee_hbss_software
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: McAfee Host-Based Intrusion Detection Software (HBSS)
  - class: rule_ref
    idref: mcafee_antivirus_definitions_updated
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Virus Scanning Software Definitions Are Updated
  - class: rule_ref
    idref: install_mcafee_antivirus
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Install McAfee Virus Scanning Software
  - class: rule_ref
    idref: service_nails_enabled
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Enable nails Service
  - class: rule_ref
    idref: install_mcafee_cma_rt
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Install the McAfee Runtime Libraries and Linux Agent
---


## /description

In
DoD environments, McAfee Host-based Security System (HBSS) and VirusScan
Enterprise for Linux (VSEL) is required to be installed on all systems.
