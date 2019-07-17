---
scapolite:
    class: rule
    version: '0.51'
id: grub2_page_poison_argument
id_namespace: org.ssgproject.RHEL-8
title: Enable page allocator poisoning
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
        href: grub2_page_poison_argument.sh
checks:
  - relative_id: '01'
    automations:
      - system: http://oval.mitre.org/XMLSchema/oval-definitions-5
        idref: oval:ssg-grub2_page_poison_argument:def:1
        href: grub2_page_poison_argument.oval.xml
  - relative_id: '02'
    automations:
      - system: http://scap.nist.gov/schema/ocil/2
        idref: ocil:ssg-grub2_page_poison_argument_ocil:questionnaire:1
        href: grub2_page_poison_argument.ocil.xml
crossrefs:
  - system: https://nvd.nist.gov/cce/index.cfm
    idref: CCE-80944-2
    relation: ''
  - system: https://nvd.nist.gov/cce/index.cfm
    idref: CCE-80944-2
    relation: ''
---


## /rule

Enable page allocator poisoning

## /rationale

Poisoning
writes an arbitrary value to freed pages, so any modification or
reference to that page after being freed or before being initialized
will be detected and prevented. This prevents many types of
use-after-free vulnerabilities at little performance cost. Also prevents
leak of data and detection of corrupted memory.

## /description

To
enable poisoning of free pages, add the argument `page_poison=1` to the
default GRUB 2 command line for the Linux operating system in
`/etc/default/grub`, in the manner below:

``` 
GRUB_CMDLINE_LINUX="page_poison=1"
```
