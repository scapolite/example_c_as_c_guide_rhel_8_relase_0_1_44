---
scapolite:
    class: rule
    version: '0.51'
id: install_mcafee_cma_rt
id_namespace: org.ssgproject.RHEL-8
title: Install the McAfee Runtime Libraries and Linux Agent
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
        idref: oval:ssg-install_mcafee_cma_rt:def:1
        href: install_mcafee_cma_rt.oval.xml
  - relative_id: '02'
    automations:
      - system: http://scap.nist.gov/schema/ocil/2
        idref: ocil:ssg-install_mcafee_cma_rt_ocil:questionnaire:1
        href: install_mcafee_cma_rt.ocil.xml
---


## /rule

Install the McAfee Runtime Libraries and Linux Agent

## /rationale

The
McAfee Runtime Libraries (MFErt) and Linux Agent (MFEcma) are
dependencies for VirusScan Enterprise for Linux (VSEL) and Host-based
Security System (HBSS) to run.

## /description

Install
the McAfee Runtime Libraries (MFErt) and Linux Agent (MFEcma).
