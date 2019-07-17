---
scapolite:
    class: rule
    version: '0.51'
id: package_gdm_removed
id_namespace: org.ssgproject.RHEL-8
title: Remove the GDM Package Group
rule: <see below>
rationale: <see below>
description: <see below>
applicability:
  - system: org.scapolite.xccdf.applicability
    severity: medium
  - system: https://scap.nist.gov/schema/cpe/2.2
    cpes:
      - cpe:/a:gdm
checks:
  - relative_id: '01'
    automations:
      - system: http://scap.nist.gov/schema/ocil/2
        idref: ocil:ssg-package_gdm_removed_ocil:questionnaire:1
        href: package_gdm_removed.ocil.xml
crossrefs:
  - system: http://nvlpubs.nist.gov/nistpubs/SpecialPublications/NIST.SP.800-53r4.pdf
    idref: AC-17(8).1(ii)
    relation: ''
  - system: http://iase.disa.mil/stigs/os/general/Pages/index.aspx
    idref: SRG-OS-000480-GPOS-00227
    relation: ''
---


## /rule

Remove the GDM Package Group

## /rationale

Unnecessary
service packages must not be installed to decrease the attack surface of
the system. A graphical environment is unnecessary for certain types of
systems including a virtualization hypervisor.

## /description

By
removing the `gdm` package, the system no longer has GNOME installed
installed. If X Windows is not installed then the system cannot boot
into graphical user mode. This prevents the system from being
accidentally or maliciously booted into a `graphical.target` mode. To do
so, run the following command:

``` 
$ sudo yum remove gdm
```
