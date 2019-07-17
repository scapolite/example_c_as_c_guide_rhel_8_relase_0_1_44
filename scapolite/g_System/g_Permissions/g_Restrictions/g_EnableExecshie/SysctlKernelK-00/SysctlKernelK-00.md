---
scapolite:
    class: rule
    version: '0.51'
id: sysctl_kernel_kptr_restrict
id_namespace: org.ssgproject.RHEL-8
title: Restrict Exposed Kernel Pointer Addresses Access
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
        href: sysctl_kernel_kptr_restrict.sh
        complexity: low
        disruption: medium
  - relative_id: '02'
    title: Automated fix
    automations:
      - system: urn:xccdf:fix:script:ansible
        href: sysctl_kernel_kptr_restrict.ansible
        complexity: low
        disruption: medium
checks:
  - relative_id: '01'
    automations:
      - system: http://oval.mitre.org/XMLSchema/oval-definitions-5
        idref: oval:ssg-sysctl_kernel_kptr_restrict:def:1
        href: sysctl_kernel_kptr_restrict.oval.xml
  - relative_id: '02'
    automations:
      - system: http://scap.nist.gov/schema/ocil/2
        idref: ocil:ssg-sysctl_kernel_kptr_restrict_ocil:questionnaire:1
        href: sysctl_kernel_kptr_restrict.ocil.xml
crossrefs:
  - system: https://nvd.nist.gov/cce/index.cfm
    idref: CCE-80915-2
    relation: ''
  - system: http://www.ssi.gouv.fr/administration/bonnes-pratiques/
    idref: NT28(R23)
    relation: ''
  - system: http://nvlpubs.nist.gov/nistpubs/SpecialPublications/NIST.SP.800-53r4.pdf
    idref: SC-39
    relation: ''
  - system: https://nvd.nist.gov/cce/index.cfm
    idref: CCE-80915-2
    relation: ''
---


## /rule

Restrict Exposed Kernel Pointer Addresses Access

## /rationale

Exposing
kernel pointers (through procfs or `seq_printf()`) exposes kernel
writeable structures that can contain functions pointers. If a write
vulnereability occurs in the kernel allowing a write access to any of
this structure, the kernel can be compromise. This option disallow any
program withtout the CAP\_SYSLOG capability from getting the kernel
pointers addresses, replacing them with 0.

## /description

To
set the runtime status of the `kernel.kptr_restrict` kernel parameter,
run the following command:

``` 
$ sudo sysctl -w kernel.kptr_restrict=1
```

If this is not the system default value, add the following line to a
file in the directory `/etc/sysctl.d`:

``` 
kernel.kptr_restrict = 1
```
