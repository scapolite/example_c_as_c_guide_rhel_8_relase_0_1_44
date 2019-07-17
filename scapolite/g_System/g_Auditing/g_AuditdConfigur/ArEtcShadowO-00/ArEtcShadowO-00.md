---
scapolite:
    class: rule
    version: '0.51'
id: audit_rules_etc_shadow_open
id_namespace: org.ssgproject.RHEL-8
title: |
    Record Events that Modify User/Group Information via open syscall -
    /etc/shadow
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
        href: audit_rules_etc_shadow_open.sh
  - relative_id: '02'
    title: Automated fix
    automations:
      - system: urn:xccdf:fix:script:ansible
        href: audit_rules_etc_shadow_open.ansible
        complexity: low
        disruption: low
checks:
  - relative_id: '01'
    automations:
      - system: http://oval.mitre.org/XMLSchema/oval-definitions-5
        idref: oval:ssg-audit_rules_etc_shadow_open:def:1
        href: audit_rules_etc_shadow_open.oval.xml
  - relative_id: '02'
    automations:
      - system: http://scap.nist.gov/schema/ocil/2
        idref: ocil:ssg-audit_rules_etc_shadow_open_ocil:questionnaire:1
        href: audit_rules_etc_shadow_open.ocil.xml
crossrefs:
  - system: https://nvd.nist.gov/cce/index.cfm
    idref: CCE-80956-6
    relation: ''
  - system: https://www.niap-ccevs.org/Profile/PP.cfm
    idref: FAU_GEN.1.1.c
    relation: ''
  - system: https://nvd.nist.gov/cce/index.cfm
    idref: CCE-80956-6
    relation: ''
---


## /rule

Record Events that Modify User/Group Information via open syscall -
/etc/shadow

## /rationale

Creation
of users through direct edition of /etc/shadow could be an indicator of
malicious activity on a system. Auditing these events could serve as
evidence of potential system compromise.

## /description

The
audit system should collect write events to /etc/shadow file for all
users and root. If the `auditd` daemon is configured to use the
`augenrules` program to read audit rules during daemon startup (the
default), add the following lines to a file with suffix `.rules` in the
directory `/etc/audit/rules.d`:

``` 
-a always,exit -F arch=b32 -S open -F a1&03 -F path=/etc/shadow -F auid>=1000 -F auid!=unset -F key=user-modify
```

If the `auditd` daemon is configured to use the `auditctl` utility to
read audit rules during daemon startup, add the following lines to
`/etc/audit/audit.rules` file:

``` 
-a always,exit -F arch=b32 -S open -F a1&03 -F path=/etc/shadow -F auid>=1000 -F auid!=unset -F key=user-modify
```

If the system is 64 bit then also add the following line:

``` 
-a always,exit -F arch=b64 -S open -F a1&03 -F path=/etc/shadow -F auid>=1000 -F auid!=unset -F key=user-modify
```
