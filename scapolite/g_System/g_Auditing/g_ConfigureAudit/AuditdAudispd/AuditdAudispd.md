---
scapolite:
    class: rule
    version: '0.51'
id: auditd_audispd_network_failure_action
id_namespace: org.ssgproject.RHEL-8
title: Configure audispd\'s Plugin network\_failure\_action On Network Failure
rule: <see below>
rationale: <see below>
description: <see below>
applicability:
  - system: org.scapolite.xccdf.applicability
    severity: medium
  - system: https://scap.nist.gov/schema/cpe/2.2
    cpes:
      - cpe:/a:machine
checks:
  - relative_id: '01'
    automations:
      - system: http://scap.nist.gov/schema/ocil/2
        idref: ocil:ssg-auditd_audispd_network_failure_action_ocil:questionnaire:1
        href: auditd_audispd_network_failure_action.ocil.xml
crossrefs:
  - system: http://iase.disa.mil/stigs/cci/Pages/index.aspx
    idref: CCI-001851
    relation: ''
  - system: http://iase.disa.mil/stigs/os/general/Pages/index.aspx
    idref: SRG-OS-000342-GPOS-00133
    relation: ''
  - system: http://iase.disa.mil/stigs/os/unix-linux/Pages/index.aspx
    idref: RHEL-08-030321
    relation: ''
---


## /rule

Configure audispd\'s Plugin network\_failure\_action On Network Failure

## /rationale

Taking
appropriate action when there is an error sending audit records to a
remote system will minimize the possibility of losing audit records.

## /description

Configure
the action the operating system takes if there is an error sending audit
records to a remote system. Edit the file
`/etc/audisp/audisp-remote.conf`. Add or modify the following line,
substituting *ACTION* appropriately:

``` 
network_failure_action = ACTION
```

Set this value to `single` to cause the system to switch to single user
mode for corrective action. Acceptable values also include `syslog` and
`halt`. For certain systems, the need for availability outweighs the
need to log all actions, and a different setting should be determined.
