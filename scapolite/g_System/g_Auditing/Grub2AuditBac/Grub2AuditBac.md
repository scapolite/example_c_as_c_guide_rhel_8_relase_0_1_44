---
scapolite:
    class: rule
    version: '0.51'
id: grub2_audit_backlog_limit_argument
id_namespace: org.ssgproject.RHEL-8
title: Extend Audit Backlog Limit for the Audit Daemon
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
        href: grub2_audit_backlog_limit_argument.sh
checks:
  - relative_id: '01'
    automations:
      - system: http://oval.mitre.org/XMLSchema/oval-definitions-5
        idref: oval:ssg-grub2_audit_backlog_limit_argument:def:1
        href: grub2_audit_backlog_limit_argument.oval.xml
  - relative_id: '02'
    automations:
      - system: http://scap.nist.gov/schema/ocil/2
        idref: ocil:ssg-grub2_audit_backlog_limit_argument_ocil:questionnaire:1
        href: grub2_audit_backlog_limit_argument.ocil.xml
crossrefs:
  - system: https://nvd.nist.gov/cce/index.cfm
    idref: CCE-80943-4
    relation: ''
  - system: https://nvd.nist.gov/cce/index.cfm
    idref: CCE-80943-4
    relation: ''
---


## /rule

Extend Audit Backlog Limit for the Audit Daemon

## /rationale

audit\_backlog\_limit
sets the queue length for audit events awaiting transfer to the audit
daemon. Until the audit daemon is up and running, all log messages are
stored in this queue. If the queue is overrun during boot process, the
action defined by audit failure flag is taken.

## /description

To
improve the kernel capacity to queue all log events, even those which
occurred prior to the audit daemon, add the argument
`audit_backlog_limit=8192` to the default GRUB 2 command line for the
Linux operating system in `/etc/default/grub`, in the manner below:

``` 
GRUB_CMDLINE_LINUX="crashkernel=auto rd.lvm.lv=VolGroup/LogVol06 rd.lvm.lv=VolGroup/lv_swap rhgb quiet rd.shell=0 audit=1 audit_backlog_limit=8192"
```
