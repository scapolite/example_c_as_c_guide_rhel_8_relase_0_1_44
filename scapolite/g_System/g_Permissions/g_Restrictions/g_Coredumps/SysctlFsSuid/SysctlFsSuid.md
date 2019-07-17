---
scapolite:
    class: rule
    version: '0.51'
id: sysctl_fs_suid_dumpable
id_namespace: org.ssgproject.RHEL-8
title: Disable Core Dumps for SUID programs
rule: <see below>
rationale: <see below>
description: <see below>
applicability:
  - system: org.scapolite.xccdf.applicability
    severity: medium
  - system: https://scap.nist.gov/schema/cpe/2.2
    cpes:
      - cpe:/a:machine
checks:
  - relative_id: '01'
    automations:
      - system: http://scap.nist.gov/schema/ocil/2
        idref: ocil:ssg-sysctl_fs_suid_dumpable_ocil:questionnaire:1
        href: sysctl_fs_suid_dumpable.ocil.xml
crossrefs:
  - system: https://nvd.nist.gov/cce/index.cfm
    idref: CCE-80912-9
    relation: ''
  - system: org.scapolite.unknown
    idref: 1.5.1
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
    idref: CCE-80912-9
    relation: ''
---


## /rule

Disable Core Dumps for SUID programs

## /rationale

The
core dump of a setuid program is more likely to contain sensitive data,
as the program itself runs with greater privileges than the user who
initiated execution of the program. Disabling the ability for any setuid
program to write a core file decreases the risk of unauthorized access
of such data.

## /description

To
set the runtime status of the `fs.suid_dumpable` kernel parameter, run
the following command:

``` 
$ sudo sysctl -w fs.suid_dumpable=0
```

If this is not the system default value, add the following line to a
file in the directory `/etc/sysctl.d`:

``` 
fs.suid_dumpable = 0
```
