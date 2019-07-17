---
scapolite:
    class: rule
    version: '0.51'
id: audit_rules_unsuccessful_file_modification_removexattr
id_namespace: org.ssgproject.RHEL-8
title: Record Unsuccessul Permission Changes to Files - removexattr
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
        href: audit_rules_unsuccessful_file_modification_removexattr.sh
  - relative_id: '02'
    title: Automated fix
    automations:
      - system: urn:xccdf:fix:script:ansible
        href: audit_rules_unsuccessful_file_modification_removexattr.ansible
        complexity: low
        disruption: low
checks:
  - relative_id: '01'
    automations:
      - system: http://oval.mitre.org/XMLSchema/oval-definitions-5
        idref: oval:ssg-audit_rules_unsuccessful_file_modification_removexattr:def:1
        href: audit_rules_unsuccessful_file_modification_removexattr.oval.xml
  - relative_id: '02'
    automations:
      - system: http://scap.nist.gov/schema/ocil/2
        idref: ocil:ssg-audit_rules_unsuccessful_file_modification_removexattr_ocil:questionnaire:1
        href: audit_rules_unsuccessful_file_modification_removexattr.ocil.xml
crossrefs:
  - system: https://nvd.nist.gov/cce/index.cfm
    idref: CCE-80982-2
    relation: ''
  - system: http://iase.disa.mil/stigs/cci/Pages/index.aspx
    idref: CCI-000172
    relation: ''
  - system: http://nvlpubs.nist.gov/nistpubs/SpecialPublications/NIST.SP.800-53r4.pdf
    idref: AU-12(c)
    relation: ''
  - system: org.scapolite.unknown
    idref: SRG-OS-000458-VMM-001810
    relation: ''
  - system: org.scapolite.unknown
    idref: SRG-OS-000461-VMM-001830
    relation: ''
  - system: https://nvd.nist.gov/cce/index.cfm
    idref: CCE-80982-2
    relation: ''
---


## /rule

Record Unsuccessul Permission Changes to Files - removexattr

## /rationale

Unsuccessful
attempts to change permissions of files could be an indicator of
malicious activity on a system. Auditing these events could serve as
evidence of potential system compromise.

## /description

The
audit system should collect unsuccessful file permission change attempts
for all users and root. If the `auditd` daemon is configured to use the
`augenrules` program to read audit rules during daemon startup (the
default), add the following lines to a file with suffix `.rules` in the
directory `/etc/audit/rules.d`. If the `auditd` daemon is configured to
use the `auditctl` utility to read audit rules during daemon startup,
add the following lines to `/etc/audit/audit.rules` file.

``` 
-a always,exit -F arch=b32 -S removexattr -F exit=-EACCES -F auid>=1000 -F auid!=unset -F key=unsuccesful-perm-change
-a always,exit -F arch=b32 -S removexattr -F exit=-EPERM -F auid>=1000 -F auid!=unset -F key=unsuccesful-perm-change
```

If the system is 64 bit then also add the following lines:

``` 
-a always,exit -F arch=b64 -S removexattr -F exit=-EACCES -F auid>=1000 -F auid!=unset -F key=unsuccesful-perm-change
-a always,exit -F arch=b64 -S removexattr -F exit=-EPERM -F auid>=1000 -F auid!=unset -F key=unsuccesful-perm-change
```
