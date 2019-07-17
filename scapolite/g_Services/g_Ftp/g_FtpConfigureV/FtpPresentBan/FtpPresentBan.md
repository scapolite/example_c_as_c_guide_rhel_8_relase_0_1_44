---
scapolite:
    class: rule
    version: '0.51'
id: ftp_present_banner
id_namespace: org.ssgproject.RHEL-8
title: Create Warning Banners for All FTP Users
rule: <see below>
rationale: <see below>
description: <see below>
applicability:
  - system: org.scapolite.xccdf.applicability
    severity: medium
checks:
  - relative_id: '01'
    automations:
      - system: http://oval.mitre.org/XMLSchema/oval-definitions-5
        idref: oval:ssg-ftp_present_banner:def:1
        href: ftp_present_banner.oval.xml
  - relative_id: '02'
    automations:
      - system: http://scap.nist.gov/schema/ocil/2
        idref: ocil:ssg-ftp_present_banner_ocil:questionnaire:1
        href: ftp_present_banner.ocil.xml
crossrefs:
  - system: http://iase.disa.mil/stigs/cci/Pages/index.aspx
    idref: CCI-000048
    relation: ''
---


## /rule

Create Warning Banners for All FTP Users

## /rationale

This
setting will cause the system greeting banner to be used for FTP
connections as well.

## /description

Edit the vsftpd configuration file, which resides at
`/etc/vsftpd/vsftpd.conf` by default. Add or correct the following
configuration options:

``` 
banner_file=/etc/issue
```
