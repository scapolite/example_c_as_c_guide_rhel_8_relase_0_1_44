---
scapolite:
    class: group
    version: '0.51'
id: disabling_snmp_service
id_namespace: org.ssgproject.RHEL-8
title: Disable SNMP Server if Possible
description: <see below>
contents:
  - class: rule_ref
    idref: package_net-snmp_removed
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Uninstall net-snmp Package
  - class: rule_ref
    idref: service_snmpd_disabled
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Disable snmpd Service
---


## /description

The
system includes an SNMP daemon that allows for its remote monitoring,
though it not installed by default. If it was installed and activated
but is not needed, the software should be disabled and removed.
