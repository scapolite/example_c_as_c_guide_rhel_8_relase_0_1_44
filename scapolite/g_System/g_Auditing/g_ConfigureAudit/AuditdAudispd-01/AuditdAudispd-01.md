---
scapolite:
    class: rule
    version: '0.51'
id: auditd_audispd_configure_remote_server
id_namespace: org.ssgproject.RHEL-8
title: Configure audispd Plugin To Send Logs To Remote Server
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
        href: auditd_audispd_configure_remote_server.sh
checks:
  - relative_id: '01'
    automations:
      - system: http://oval.mitre.org/XMLSchema/oval-definitions-5
        idref: oval:ssg-auditd_audispd_configure_remote_server:def:1
        href: auditd_audispd_configure_remote_server.oval.xml
        exports:
          - value_id_namespace: org.ssgproject.RHEL-8
            value_idref: var_audispd_remote_server
            variable_idref: oval:ssg-var_audispd_remote_server:var:1
  - relative_id: '02'
    automations:
      - system: http://scap.nist.gov/schema/ocil/2
        idref: ocil:ssg-auditd_audispd_configure_remote_server_ocil:questionnaire:1
        href: auditd_audispd_configure_remote_server.ocil.xml
crossrefs:
  - system: https://nvd.nist.gov/cce/index.cfm
    idref: CCE-80925-1
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
    idref: RHEL-08-030300
    relation: ''
  - system: org.scapolite.unknown
    idref: SRG-OS-000051-VMM-000230
    relation: ''
  - system: org.scapolite.unknown
    idref: SRG-OS-000058-VMM-000270
    relation: ''
  - system: org.scapolite.unknown
    idref: SRG-OS-000059-VMM-000280
    relation: ''
  - system: org.scapolite.unknown
    idref: SRG-OS-000479-VMM-001990
    relation: ''
  - system: org.scapolite.unknown
    idref: SRG-OS-000479-VMM-001990
    relation: ''
  - system: https://nvd.nist.gov/cce/index.cfm
    idref: CCE-80925-1
    relation: ''
---


## /rule

Configure audispd Plugin To Send Logs To Remote Server

## /rationale

Information
stored in one location is vulnerable to accidental or incidental
deletion or alteration.Off-loading is a common process in information
systems with limited audit storage capacity.

## /description

Configure
the audispd plugin to off-load audit records onto a different system or
media from the system being audited. Set the `remote_server` option in

``` 
/etc/audit/audisp-remote.conf
```

with an IP address or hostname of the system that the audispd plugin
should send audit records to. For example replacing *REMOTE\_SYSTEM*
with an IP address or hostname:

``` 
remote_server = REMOTE_SYSTEM
```
