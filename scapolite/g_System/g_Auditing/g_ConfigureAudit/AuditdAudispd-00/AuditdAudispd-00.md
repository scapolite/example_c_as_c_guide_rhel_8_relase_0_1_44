---
scapolite:
    class: rule
    version: '0.51'
id: auditd_audispd_encrypt_sent_records
id_namespace: org.ssgproject.RHEL-8
title: Encrypt Audit Records Sent With audispd Plugin
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
        href: auditd_audispd_encrypt_sent_records.sh
checks:
  - relative_id: '01'
    automations:
      - system: http://oval.mitre.org/XMLSchema/oval-definitions-5
        idref: oval:ssg-auditd_audispd_encrypt_sent_records:def:1
        href: auditd_audispd_encrypt_sent_records.oval.xml
  - relative_id: '02'
    automations:
      - system: http://scap.nist.gov/schema/ocil/2
        idref: ocil:ssg-auditd_audispd_encrypt_sent_records_ocil:questionnaire:1
        href: auditd_audispd_encrypt_sent_records.ocil.xml
crossrefs:
  - system: https://nvd.nist.gov/cce/index.cfm
    idref: CCE-80926-9
    relation: ''
  - system: http://iase.disa.mil/stigs/cci/Pages/index.aspx
    idref: CCI-001851
    relation: ''
  - system: https://www.niap-ccevs.org/Profile/PP.cfm
    idref: FAU_GEN.1.1.c
    relation: ''
  - system: http://iase.disa.mil/stigs/os/general/Pages/index.aspx
    idref: SRG-OS-000342-GPOS-00133
    relation: ''
  - system: http://iase.disa.mil/stigs/os/unix-linux/Pages/index.aspx
    idref: RHEL-08-030310
    relation: ''
  - system: https://nvd.nist.gov/cce/index.cfm
    idref: CCE-80926-9
    relation: ''
---


## /rule

Encrypt Audit Records Sent With audispd Plugin

## /rationale

Information
stored in one location is vulnerable to accidental or incidental
deletion or alteration. Off-loading is a common process in information
systems with limited audit storage capacity.

## /description

Configure
the operating system to encrypt the transfer of off-loaded audit records
onto a different system or media from the system being audited. Set the
`transport` option in

``` 
/etc/audit/audisp-remote.conf
```

to `KRB5`.
