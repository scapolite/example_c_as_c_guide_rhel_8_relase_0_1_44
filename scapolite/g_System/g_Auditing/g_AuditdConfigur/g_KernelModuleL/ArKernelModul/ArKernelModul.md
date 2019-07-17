---
scapolite:
    class: rule
    version: '0.51'
id: audit_rules_kernel_module_loading_create
id_namespace: org.ssgproject.RHEL-8
title: |
    Ensure auditd Collects Information on Kernel Module Loading -
    create\_module
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
        href: audit_rules_kernel_module_loading_create.sh
  - relative_id: '02'
    title: Automated fix
    automations:
      - system: urn:xccdf:fix:script:ansible
        href: audit_rules_kernel_module_loading_create.ansible
        complexity: low
checks:
  - relative_id: '01'
    automations:
      - system: http://oval.mitre.org/XMLSchema/oval-definitions-5
        idref: oval:ssg-audit_rules_kernel_module_loading_create:def:1
        href: audit_rules_kernel_module_loading_create.oval.xml
  - relative_id: '02'
    automations:
      - system: http://scap.nist.gov/schema/ocil/2
        idref: ocil:ssg-audit_rules_kernel_module_loading_create_ocil:questionnaire:1
        href: audit_rules_kernel_module_loading_create.ocil.xml
crossrefs:
  - system: https://nvd.nist.gov/cce/index.cfm
    idref: CCE-80710-7
    relation: ''
  - system: http://iase.disa.mil/stigs/cci/Pages/index.aspx
    idref: CCI-000172
    relation: ''
  - system: http://iase.disa.mil/stigs/os/general/Pages/index.aspx
    idref: SRG-OS-000471-GPOS-00216
    relation: ''
  - system: http://iase.disa.mil/stigs/os/general/Pages/index.aspx
    idref: SRG-OS-000477-GPOS-00222
    relation: ''
  - system: https://nvd.nist.gov/cce/index.cfm
    idref: CCE-80710-7
    relation: ''
---


## /rule

Ensure auditd Collects Information on Kernel Module Loading -
create\_module

## /rationale

The
addition of kernel modules can be used to alter the behavior of the
kernel and potentially introduce malicious code into kernel space. It is
important to have an audit trail of modules that have been introduced
into the kernel.

## /description

To
capture kernel module loading events, use following line, setting ARCH
to either b32 for 32-bit system, or having two lines for both b32 and
b64 in case your system is 64-bit:

``` 
-a always,exit -F arch=ARCH -S create_module -F key=modules
```

Place to add the line depends on a way `auditd` daemon is configured. If
it is configured to use the `augenrules` program (the default), add the
line to a file with suffix `.rules` in the directory
`/etc/audit/rules.d`. If the `auditd` daemon is configured to use the
`auditctl` utility, add the line to file `/etc/audit/audit.rules`.
