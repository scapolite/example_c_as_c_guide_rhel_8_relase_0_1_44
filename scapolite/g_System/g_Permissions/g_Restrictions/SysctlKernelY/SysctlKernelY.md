---
scapolite:
    class: rule
    version: '0.51'
id: sysctl_kernel_yama_ptrace_scope
id_namespace: org.ssgproject.RHEL-8
title: Restrict usage of ptrace to descendant processes
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
        href: sysctl_kernel_yama_ptrace_scope.sh
        complexity: low
        disruption: medium
  - relative_id: '02'
    title: Automated fix
    automations:
      - system: urn:xccdf:fix:script:ansible
        href: sysctl_kernel_yama_ptrace_scope.ansible
        complexity: low
        disruption: medium
checks:
  - relative_id: '01'
    automations:
      - system: http://oval.mitre.org/XMLSchema/oval-definitions-5
        idref: oval:ssg-sysctl_kernel_yama_ptrace_scope:def:1
        href: sysctl_kernel_yama_ptrace_scope.oval.xml
  - relative_id: '02'
    automations:
      - system: http://scap.nist.gov/schema/ocil/2
        idref: ocil:ssg-sysctl_kernel_yama_ptrace_scope_ocil:questionnaire:1
        href: sysctl_kernel_yama_ptrace_scope.ocil.xml
crossrefs:
  - system: https://nvd.nist.gov/cce/index.cfm
    idref: CCE-80953-3
    relation: ''
  - system: https://nvd.nist.gov/cce/index.cfm
    idref: CCE-80953-3
    relation: ''
---


## /rule

Restrict usage of ptrace to descendant processes

## /rationale

Unrestricted
usage of ptrace allows compromised binaries to run ptrace on another
processes of the user. Like this, the attacker can steal sensitive
information from the target processes (e.g. SSH sessions, web browser,
\...) without any additional assistance from the user (i.e. without
resorting to phishing).

## /description

To
set the runtime status of the `kernel.yama.ptrace_scope` kernel
parameter, run the following command:

``` 
$ sudo sysctl -w kernel.yama.ptrace_scope=1
```

If this is not the system default value, add the following line to a
file in the directory `/etc/sysctl.d`:

``` 
kernel.yama.ptrace_scope = 1
```
