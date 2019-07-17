---
scapolite:
    class: group
    version: '0.51'
id: snmp_configure_server
id_namespace: org.ssgproject.RHEL-8
title: Configure SNMP Server if Necessary
description: <see below>
contents:
  - class: rule_ref
    idref: snmpd_not_default_password
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Ensure Default SNMP Password Is Not Used
  - class: rule_ref
    idref: snmpd_use_newer_protocol
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Configure SNMP Service to Use Only SNMPv3 or Newer
---


## /description

If
it is necessary to run the snmpd agent on the system, some best
practices should be followed to minimize the security risk from the
installation. The multiple security models implemented by SNMP cannot be
fully covered here so only the following general configuration advice
can be offered:

-   use only SNMP version 3 security models and enable the use of
    authentication and encryption
-   write access to the MIB (Management Information Base) should be
    allowed only if necessary
-   all access to the MIB should be restricted following a principle of
    least privilege
-   network access should be limited to the maximum extent possible
    including restricting to expected network addresses both in the
    configuration files and in the system firewall rules
-   ensure SNMP agents send traps only to, and accept SNMP queries only
    from, authorized management stations
-   ensure that permissions on the `snmpd.conf` configuration file (by
    default, in `/etc/snmp`) are 640 or more restrictive
-   ensure that any MIB files\' permissions are also 640 or more
    restrictive
