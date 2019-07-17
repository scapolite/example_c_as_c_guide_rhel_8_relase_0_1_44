---
scapolite:
    class: rule
    version: '0.51'
id: grub2_slub_debug_argument
id_namespace: org.ssgproject.RHEL-8
title: Enable SLUB/SLAB allocator poisoning
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
        href: grub2_slub_debug_argument.sh
checks:
  - relative_id: '01'
    automations:
      - system: http://oval.mitre.org/XMLSchema/oval-definitions-5
        idref: oval:ssg-grub2_slub_debug_argument:def:1
        href: grub2_slub_debug_argument.oval.xml
  - relative_id: '02'
    automations:
      - system: http://scap.nist.gov/schema/ocil/2
        idref: ocil:ssg-grub2_slub_debug_argument_ocil:questionnaire:1
        href: grub2_slub_debug_argument.ocil.xml
crossrefs:
  - system: https://nvd.nist.gov/cce/index.cfm
    idref: CCE-80945-9
    relation: ''
  - system: https://nvd.nist.gov/cce/index.cfm
    idref: CCE-80945-9
    relation: ''
---


## /rule

Enable SLUB/SLAB allocator poisoning

## /rationale

Poisoning
writes an arbitrary value to freed objects, so any modification or
reference to that object after being freed or before being initialized
will be detected and prevented. This prevents many types of
use-after-free vulnerabilities at little performance cost. Also prevents
leak of data and detection of corrupted memory.

## /description

To
enable poisoning of SLUB/SLAB objects, add the argument `slub_debug=P`
to the default GRUB 2 command line for the Linux operating system in
`/etc/default/grub`, in the manner below:

``` 
GRUB_CMDLINE_LINUX="slub_debug=P"
```
