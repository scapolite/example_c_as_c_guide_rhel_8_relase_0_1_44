---
scapolite:
    class: group
    version: '0.51'
id: endpoint_security_software
id_namespace: org.ssgproject.RHEL-8
title: Endpoint Protection Software
description: <see below>
contents:
  - class: group_ref
    idref: mcafee_security_software
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: McAfee Endpoint Security Software
  - class: rule_ref
    idref: configure_user_data_backups
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Configure Backups of User Data
  - class: rule_ref
    idref: install_hids
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Install Intrusion Detection Software
  - class: rule_ref
    idref: install_antivirus
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Install Virus Scanning Software
---


## /description

Endpoint
protection security software that is not provided or supported by Red
Hat can be installed to provide complementary or duplicative security
capabilities to those provided by the base platform. Add-on software may
not be appropriate for some specialized systems.
