---
scapolite:
    class: group
    version: '0.51'
id: snmp
id_namespace: org.ssgproject.RHEL-8
title: SNMP Server
description: <see below>
contents:
  - class: group_ref
    idref: snmp_configure_server
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Configure SNMP Server if Necessary
  - class: group_ref
    idref: disabling_snmp_service
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Disable SNMP Server if Possible
---


## /description

The
Simple Network Management Protocol allows administrators to monitor the
state of network devices, including computers. Older versions of SNMP
were well-known for weak security, such as plaintext transmission of the
community string (used for authentication) and usage of easily-guessable
choices for the community string.
