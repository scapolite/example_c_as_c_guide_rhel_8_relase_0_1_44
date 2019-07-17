---
scapolite:
    class: rule
    version: '0.51'
id: audit_rules_execution_seunshare
id_namespace: org.ssgproject.RHEL-8
title: Record Any Attempts to Run seunshare
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
        href: audit_rules_execution_seunshare.sh
  - relative_id: '02'
    title: Automated fix
    automations:
      - system: urn:xccdf:fix:script:ansible
        href: audit_rules_execution_seunshare.ansible
        complexity: low
        disruption: low
checks:
  - relative_id: '01'
    automations:
      - system: http://oval.mitre.org/XMLSchema/oval-definitions-5
        idref: oval:ssg-audit_rules_execution_seunshare:def:1
        href: audit_rules_execution_seunshare.oval.xml
  - relative_id: '02'
    automations:
      - system: http://scap.nist.gov/schema/ocil/2
        idref: ocil:ssg-audit_rules_execution_seunshare_ocil:questionnaire:1
        href: audit_rules_execution_seunshare.ocil.xml
crossrefs:
  - system: https://nvd.nist.gov/cce/index.cfm
    idref: CCE-80933-5
    relation: ''
  - system: http://iase.disa.mil/stigs/cci/Pages/index.aspx
    idref: CCI-000172
    relation: ''
  - system: http://nvlpubs.nist.gov/nistpubs/SpecialPublications/NIST.SP.800-53r4.pdf
    idref: AU-12(c)
    relation: ''
  - system: https://www.niap-ccevs.org/Profile/PP.cfm
    idref: FAU_GEN.1.1.c
    relation: ''
  - system: org.scapolite.unknown
    idref: SRG-OS-000463-VMM-001850
    relation: ''
  - system: https://nvd.nist.gov/cce/index.cfm
    idref: CCE-80933-5
    relation: ''
---


## /rule

Record Any Attempts to Run seunshare

## /rationale

Misuse
of privileged functions, either intentionally or unintentionally by
authorized users, or by unauthorized external entities that have
compromised system accounts, is a serious and ongoing concern and can
have significant adverse impacts on organizations. Auditing the use of
privileged functions is one way to detect such misuse and identify the
risk from insider and advanced persistent threast.  
  
Privileged programs are subject to escalation-of-privilege attacks,
which attempt to subvert their normal role of providing some necessary
but limited capability. As such, motivation exists to monitor these
programs for unusual activity.

## /description

At
a minimum, the audit system should collect any execution attempt of the
`seunshare` command for all users and root. If the `auditd` daemon is
configured to use the `augenrules` program to read audit rules during
daemon startup (the default), add the following lines to a file with
suffix `.rules` in the directory `/etc/audit/rules.d`:

``` 
-a always,exit -F path=/usr/sbin/seunshare -F perm=x -F auid>=1000 -F auid!=unset -F key=privileged-priv_change
```

If the `auditd` daemon is configured to use the `auditctl` utility to
read audit rules during daemon startup, add the following lines to
`/etc/audit/audit.rules` file:

``` 
-a always,exit -F path=/usr/sbin/seunshare -F perm=x -F auid>=1000 -F auid!=unset -F key=privileged-priv_change
```
