---
scapolite:
    class: rule
    version: '0.51'
id: no_user_host_based_files
id_namespace: org.ssgproject.RHEL-8
title: Remove User Host-Based Authentication Files
rule: <see below>
rationale: <see below>
description: <see below>
applicability:
  - system: org.scapolite.xccdf.applicability
    severity: high
implementations:
  - relative_id: '01'
    title: Automated fix
    automations:
      - system: urn:xccdf:fix:script:sh
        href: no_user_host_based_files.sh
checks:
  - relative_id: '01'
    automations:
      - system: http://oval.mitre.org/XMLSchema/oval-definitions-5
        idref: oval:ssg-no_user_host_based_files:def:1
        href: no_user_host_based_files.oval.xml
  - relative_id: '02'
    automations:
      - system: http://scap.nist.gov/schema/ocil/2
        idref: ocil:ssg-no_user_host_based_files_ocil:questionnaire:1
        href: no_user_host_based_files.ocil.xml
crossrefs:
  - system: http://iase.disa.mil/stigs/cci/Pages/index.aspx
    idref: CCI-000366
    relation: ''
  - system: http://iase.disa.mil/stigs/os/general/Pages/index.aspx
    idref: SRG-OS-000480-GPOS-00227
    relation: ''
---


## /rule

Remove User Host-Based Authentication Files

## /rationale

The
.shosts files are used to configure host-based authentication for
individual users or the system via SSH. Host-based authentication is not
sufficient for preventing unauthorized access to the system, as it does
not require interactive identification and authentication of a
connection request, or for the use of two-factor authentication.

## /description

The
`~/.shosts` (in each user\'s home directory) files list remote hosts and
users that are trusted by the local system. To remove these files, run
the following command to delete them from any location:

``` 
$ sudo find / -name '.shosts' -type f -delete
```
