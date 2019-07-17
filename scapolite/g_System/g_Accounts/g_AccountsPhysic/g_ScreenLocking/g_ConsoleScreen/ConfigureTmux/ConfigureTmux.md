---
scapolite:
    class: rule
    version: '0.51'
id: configure_tmux_lock_command
id_namespace: org.ssgproject.RHEL-8
title: Configure the tmux Lock Command
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
        href: configure_tmux_lock_command.sh
checks:
  - relative_id: '01'
    automations:
      - system: http://oval.mitre.org/XMLSchema/oval-definitions-5
        idref: oval:ssg-configure_tmux_lock_command:def:1
        href: configure_tmux_lock_command.oval.xml
  - relative_id: '02'
    automations:
      - system: http://scap.nist.gov/schema/ocil/2
        idref: ocil:ssg-configure_tmux_lock_command_ocil:questionnaire:1
        href: configure_tmux_lock_command.ocil.xml
crossrefs:
  - system: https://nvd.nist.gov/cce/index.cfm
    idref: CCE-80940-0
    relation: ''
  - system: http://iase.disa.mil/stigs/cci/Pages/index.aspx
    idref: CCI-000056
    relation: ''
  - system: http://iase.disa.mil/stigs/cci/Pages/index.aspx
    idref: CCI-000058
    relation: ''
  - system: http://nvlpubs.nist.gov/nistpubs/SpecialPublications/NIST.SP.800-53r4.pdf
    idref: AC-11(a)
    relation: ''
  - system: http://nvlpubs.nist.gov/nistpubs/SpecialPublications/NIST.SP.800-53r4.pdf
    idref: AC-11(b)
    relation: ''
  - system: org.scapolite.unknown
    idref: SRG-OS-000028-VMM-000090
    relation: ''
  - system: org.scapolite.unknown
    idref: SRG-OS-000030-VMM-000110
    relation: ''
  - system: https://nvd.nist.gov/cce/index.cfm
    idref: CCE-80940-0
    relation: ''
---


## /rule

Configure the tmux Lock Command

## /rationale

The
`tmux` package allows for a session lock to be implemented and
configured. However, the session lock is implemented by an external
command. The `tmux` default configuration does not contain an effective
session lock.

## /description

To
enable console screen locking in `tmux` terminal multiplexer, the
`vlock` command must be configured to be used as a locking mechanism.
Add the following line to `/etc/tmux.conf`:

``` 
set -g lock-command vlock
```

. The console can now be locked with the following key combination:

``` 
ctrl+b :lock-session
```
