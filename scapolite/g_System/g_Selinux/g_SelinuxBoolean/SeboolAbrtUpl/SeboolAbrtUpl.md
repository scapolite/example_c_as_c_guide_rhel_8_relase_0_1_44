---
scapolite:
    class: rule
    version: '0.51'
id: sebool_abrt_upload_watch_anon_write
id_namespace: org.ssgproject.RHEL-8
title: Disable the abrt\_upload\_watch\_anon\_write SELinux Boolean
rule: <see below>
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
        idref: ocil:ssg-sebool_abrt_upload_watch_anon_write_ocil:questionnaire:1
        href: sebool_abrt_upload_watch_anon_write.ocil.xml
crossrefs:
  - system: http://nvlpubs.nist.gov/nistpubs/SpecialPublications/NIST.SP.800-171.pdf
    idref: 3.7.2
    relation: ''
---


## /rule

Disable the abrt\_upload\_watch\_anon\_write SELinux Boolean

## /description

By
default, the SELinux boolean `abrt_upload_watch_anon_write` is enabled.
This setting should be disabled as it allows the Automatic Bug Report
Tool (ABRT) to modify public files used for public file transfer
services. To disable the `abrt_upload_watch_anon_write` SELinux boolean,
run the following command:

``` 
$ sudo setsebool -P abrt_upload_watch_anon_write off
```
