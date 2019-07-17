---
scapolite:
    class: rule
    version: '0.51'
id: sysctl_kernel_kexec_load_disabled
id_namespace: org.ssgproject.RHEL-8
title: Disable kernel image loading
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
        href: sysctl_kernel_kexec_load_disabled.sh
        complexity: low
        disruption: medium
  - relative_id: '02'
    title: Automated fix
    automations:
      - system: urn:xccdf:fix:script:ansible
        href: sysctl_kernel_kexec_load_disabled.ansible
        complexity: low
        disruption: medium
checks:
  - relative_id: '01'
    automations:
      - system: http://oval.mitre.org/XMLSchema/oval-definitions-5
        idref: oval:ssg-sysctl_kernel_kexec_load_disabled:def:1
        href: sysctl_kernel_kexec_load_disabled.oval.xml
  - relative_id: '02'
    automations:
      - system: http://scap.nist.gov/schema/ocil/2
        idref: ocil:ssg-sysctl_kernel_kexec_load_disabled_ocil:questionnaire:1
        href: sysctl_kernel_kexec_load_disabled.ocil.xml
crossrefs:
  - system: https://nvd.nist.gov/cce/index.cfm
    idref: CCE-80952-5
    relation: ''
  - system: https://nvd.nist.gov/cce/index.cfm
    idref: CCE-80952-5
    relation: ''
---


## /rule

Disable kernel image loading

## /rationale

Disabling
kexec\_load allows greater control of the kernel memory. It makes it
impossible to load another kernel image after it has been disabled.

## /description

To
set the runtime status of the `kernel.kexec_load_disabled` kernel
parameter, run the following command:

``` 
$ sudo sysctl -w kernel.kexec_load_disabled=1
```

If this is not the system default value, add the following line to a
file in the directory `/etc/sysctl.d`:

``` 
kernel.kexec_load_disabled = 1
```
