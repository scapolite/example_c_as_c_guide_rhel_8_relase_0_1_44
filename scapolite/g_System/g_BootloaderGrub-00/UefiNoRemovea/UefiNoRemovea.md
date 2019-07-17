---
scapolite:
    class: rule
    version: '0.51'
id: uefi_no_removeable_media
id_namespace: org.ssgproject.RHEL-8
title: UEFI Boat Loader Is Not Installed On Removeable Media
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
        idref: ocil:ssg-uefi_no_removeable_media_ocil:questionnaire:1
        href: uefi_no_removeable_media.ocil.xml
crossrefs:
  - system: http://iase.disa.mil/stigs/cci/Pages/index.aspx
    idref: CCI-001814
    relation: ''
  - system: http://iase.disa.mil/stigs/os/general/Pages/index.aspx
    idref: SRG-OS-000364-GPOS-00151
    relation: ''
---


## /rule

UEFI Boat Loader Is Not Installed On Removeable Media

## /rationale

Malicious
users with removable boot media can gain access to a system configured
to use removable media as the boot loader.

## /description

The
system must not allow removable media to be used as the boot loader.
Remove alternate methods of booting the system from removable media.
`usb0`, `cd`, `fd0`, etc. are some examples of removeable media which
should not exist in the line:

``` 
set root='hd0,msdos1'
```
