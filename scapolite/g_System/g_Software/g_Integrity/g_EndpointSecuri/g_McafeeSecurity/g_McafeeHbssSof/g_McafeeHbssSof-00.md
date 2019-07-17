---
scapolite:
    class: group
    version: '0.51'
id: mcafee_hbss_software
id_namespace: org.ssgproject.RHEL-8
title: McAfee Host-Based Intrusion Detection Software (HBSS)
description: <see below>
contents:
  - class: rule_ref
    idref: install_mcafee_hbss_pa
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Install the Policy Auditor (PA) Module
  - class: rule_ref
    idref: install_mcafee_hbss_accm
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Install the Asset Configuration Compliance Module (ACCM)
  - class: rule_ref
    idref: install_mcafee_hbss_hips
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Install the Host Intrusion Prevention System (HIPS) Module
---


## /description

McAfee
Host-based Security System (HBSS) is a suite of software applications
used to monitor, detect, and defend computer networks and systems.
