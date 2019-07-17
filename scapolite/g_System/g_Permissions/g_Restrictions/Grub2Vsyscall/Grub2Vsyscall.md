---
scapolite:
    class: rule
    version: '0.51'
id: grub2_vsyscall_argument
id_namespace: org.ssgproject.RHEL-8
title: Disable vsyscalls
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
        href: grub2_vsyscall_argument.sh
checks:
  - relative_id: '01'
    automations:
      - system: http://oval.mitre.org/XMLSchema/oval-definitions-5
        idref: oval:ssg-grub2_vsyscall_argument:def:1
        href: grub2_vsyscall_argument.oval.xml
  - relative_id: '02'
    automations:
      - system: http://scap.nist.gov/schema/ocil/2
        idref: ocil:ssg-grub2_vsyscall_argument_ocil:questionnaire:1
        href: grub2_vsyscall_argument.ocil.xml
crossrefs:
  - system: https://nvd.nist.gov/cce/index.cfm
    idref: CCE-80946-7
    relation: ''
  - system: https://nvd.nist.gov/cce/index.cfm
    idref: CCE-80946-7
    relation: ''
---


## /rule

Disable vsyscalls

## /rationale

Virtual
Syscalls provide an opportunity of attack for a user who has control of
the return instruction pointer.

## /description

To
disable use of virtual syscalls, add the argument `vsyscall=none` to the
default GRUB 2 command line for the Linux operating system in
`/etc/default/grub`, in the manner below:

``` 
GRUB_CMDLINE_LINUX="vsyscall=none"
```
