---
scapolite:
    class: rule
    version: '0.51'
id: ftp_log_transactions
id_namespace: org.ssgproject.RHEL-8
title: Enable Logging of All FTP Transactions
rule: <see below>
rationale: <see below>
description: <see below>
applicability:
  - system: org.scapolite.xccdf.applicability
checks:
  - relative_id: '01'
    automations:
      - system: http://oval.mitre.org/XMLSchema/oval-definitions-5
        idref: oval:ssg-ftp_log_transactions:def:1
        href: ftp_log_transactions.oval.xml
  - relative_id: '02'
    automations:
      - system: http://scap.nist.gov/schema/ocil/2
        idref: ocil:ssg-ftp_log_transactions_ocil:questionnaire:1
        href: ftp_log_transactions.ocil.xml
---


## /rule

Enable Logging of All FTP Transactions

## /rationale

To
trace malicious activity facilitated by the FTP service, it must be
configured to ensure that all commands sent to the FTP server are logged
using the verbose vsftpd log format. The default vsftpd log file is
`/var/log/vsftpd.log`.

## /description

Add
or correct the following configuration options within the `vsftpd`
configuration file, located at `/etc/vsftpd/vsftpd.conf`:

``` 
xferlog_enable=YES
xferlog_std_format=NO
log_ftp_protocol=YES
```
