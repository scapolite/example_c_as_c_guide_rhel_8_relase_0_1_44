---
scapolite:
    class: rule
    version: '0.51'
id: directory_access_var_log_audit
id_namespace: org.ssgproject.RHEL-8
title: Record Access Events to Audit Log directory
rule: <see below>
rationale: <see below>
description: <see below>
applicability:
  - system: org.scapolite.xccdf.applicability
    severity: medium
  - system: https://scap.nist.gov/schema/cpe/2.2
    cpes:
      - cpe:/a:machine
implementations:
  - relative_id: '01'
    title: Automated fix
    automations:
      - system: urn:xccdf:fix:script:sh
        href: directory_access_var_log_audit.sh
  - relative_id: '02'
    title: Automated fix
    automations:
      - system: urn:xccdf:fix:script:ansible
        href: directory_access_var_log_audit.ansible
        complexity: low
        disruption: low
checks:
  - relative_id: '01'
    automations:
      - system: http://oval.mitre.org/XMLSchema/oval-definitions-5
        idref: oval:ssg-directory_access_var_log_audit:def:1
        href: directory_access_var_log_audit.oval.xml
  - relative_id: '02'
    automations:
      - system: http://scap.nist.gov/schema/ocil/2
        idref: ocil:ssg-directory_access_var_log_audit_ocil:questionnaire:1
        href: directory_access_var_log_audit.ocil.xml
crossrefs:
  - system: https://nvd.nist.gov/cce/index.cfm
    idref: CCE-80941-8
    relation: ''
  - system: https://www.niap-ccevs.org/Profile/PP.cfm
    idref: FAU_GEN.1.1.c
    relation: ''
  - system: https://nvd.nist.gov/cce/index.cfm
    idref: CCE-80941-8
    relation: ''
---


## /rule

Record Access Events to Audit Log directory

## /rationale

Attempts
to read the logs should be recorded, suspicious access to audit log
files could be an indicator of malicious activity on a system. Auditing
these events could serve as evidence of potential system compromise.\'

## /description

The
audit system should collect access events to read audit log directory.
The following audit rule will assure that access to audit log directory
are collected.

``` 
-a always,exit -F dir=/var/log/audit/ -F perm=r -F auid>=1000 -F auid!=unset -F key=access-audit-trail
```

If the `auditd` daemon is configured to use the `augenrules` program to
read audit rules during daemon startup (the default), add the rule to a
file with suffix `.rules` in the directory `/etc/audit/rules.d`. If the
`auditd` daemon is configured to use the `auditctl` utility to read
audit rules during daemon startup, add the rule to
`/etc/audit/audit.rules` file.
