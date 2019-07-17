---
scapolite:
    class: rule
    version: '0.51'
id: sysctl_kernel_dmesg_restrict
id_namespace: org.ssgproject.RHEL-8
title: Restrict Access to Kernel Message Buffer
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
        href: sysctl_kernel_dmesg_restrict.sh
        complexity: low
        disruption: medium
  - relative_id: '02'
    title: Automated fix
    automations:
      - system: urn:xccdf:fix:script:ansible
        href: sysctl_kernel_dmesg_restrict.ansible
        complexity: low
        disruption: medium
checks:
  - relative_id: '01'
    automations:
      - system: http://oval.mitre.org/XMLSchema/oval-definitions-5
        idref: oval:ssg-sysctl_kernel_dmesg_restrict:def:1
        href: sysctl_kernel_dmesg_restrict.oval.xml
  - relative_id: '02'
    automations:
      - system: http://scap.nist.gov/schema/ocil/2
        idref: ocil:ssg-sysctl_kernel_dmesg_restrict_ocil:questionnaire:1
        href: sysctl_kernel_dmesg_restrict.ocil.xml
crossrefs:
  - system: https://nvd.nist.gov/cce/index.cfm
    idref: CCE-80913-7
    relation: ''
  - system: http://nvlpubs.nist.gov/nistpubs/SpecialPublications/NIST.SP.800-171.pdf
    idref: 3.1.5
    relation: ''
  - system: http://iase.disa.mil/stigs/cci/Pages/index.aspx
    idref: CCI-001314
    relation: ''
  - system: https://www.gpo.gov/fdsys/pkg/CFR-2007-title45-vol1/pdf/CFR-2007-title45-vol1-chapA-subchapC.pdf
    idref: 164.308(a)(1)(ii)(D)
    relation: ''
  - system: https://www.gpo.gov/fdsys/pkg/CFR-2007-title45-vol1/pdf/CFR-2007-title45-vol1-chapA-subchapC.pdf
    idref: 164.308(a)(3)
    relation: ''
  - system: https://www.gpo.gov/fdsys/pkg/CFR-2007-title45-vol1/pdf/CFR-2007-title45-vol1-chapA-subchapC.pdf
    idref: 164.308(a)(4)
    relation: ''
  - system: https://www.gpo.gov/fdsys/pkg/CFR-2007-title45-vol1/pdf/CFR-2007-title45-vol1-chapA-subchapC.pdf
    idref: 164.310(b)
    relation: ''
  - system: https://www.gpo.gov/fdsys/pkg/CFR-2007-title45-vol1/pdf/CFR-2007-title45-vol1-chapA-subchapC.pdf
    idref: 164.310(c)
    relation: ''
  - system: https://www.gpo.gov/fdsys/pkg/CFR-2007-title45-vol1/pdf/CFR-2007-title45-vol1-chapA-subchapC.pdf
    idref: 164.312(a)
    relation: ''
  - system: https://www.gpo.gov/fdsys/pkg/CFR-2007-title45-vol1/pdf/CFR-2007-title45-vol1-chapA-subchapC.pdf
    idref: 164.312(e)
    relation: ''
  - system: http://nvlpubs.nist.gov/nistpubs/SpecialPublications/NIST.SP.800-53r4.pdf
    idref: SI-11
    relation: ''
  - system: https://nvd.nist.gov/cce/index.cfm
    idref: CCE-80913-7
    relation: ''
---


## /rule

Restrict Access to Kernel Message Buffer

## /rationale

Unprivileged
access to the kernel syslog can expose sensitive kernel address
information.

## /description

To
set the runtime status of the `kernel.dmesg_restrict` kernel parameter,
run the following command:

``` 
$ sudo sysctl -w kernel.dmesg_restrict=1
```

If this is not the system default value, add the following line to a
file in the directory `/etc/sysctl.d`:

``` 
kernel.dmesg_restrict = 1
```
