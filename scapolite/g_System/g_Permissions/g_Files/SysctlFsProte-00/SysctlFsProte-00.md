---
scapolite:
    class: rule
    version: '0.51'
id: sysctl_fs_protected_hardlinks
id_namespace: org.ssgproject.RHEL-8
title: Disallow creating hardlinks to a file you not own
rule: <see below>
rationale: <see below>
description: <see below>
applicability:
  - system: org.scapolite.xccdf.applicability
checks:
  - relative_id: '01'
    automations:
      - system: http://scap.nist.gov/schema/ocil/2
        idref: ocil:ssg-sysctl_fs_protected_hardlinks_ocil:questionnaire:1
        href: sysctl_fs_protected_hardlinks.ocil.xml
crossrefs:
  - system: http://www.ssi.gouv.fr/administration/bonnes-pratiques/
    idref: NT28(R23)
    relation: ''
  - system: org.scapolite.unknown
    idref: 1.6.1
    relation: ''
  - system: http://nvlpubs.nist.gov/nistpubs/SpecialPublications/NIST.SP.800-53r4.pdf
    idref: SI-11
    relation: ''
---


## /rule

Disallow creating hardlinks to a file you not own

## /rationale

Disallowing
such hardlink mitigate vulnerabilities based on insecure file system
accessed by privilegied programs, avoiding an exploitation vector
exploiting unsafe use of `open()` or `creat()`.

## /description

To
set the runtime status of the `fs.protected_hardlinks` kernel parameter,
run the following command:

``` 
$ sudo sysctl -w fs.protected_hardlinks=1
```

If this is not the system default value, add the following line to a
file in the directory `/etc/sysctl.d`:

``` 
fs.protected_hardlinks = 1
```
