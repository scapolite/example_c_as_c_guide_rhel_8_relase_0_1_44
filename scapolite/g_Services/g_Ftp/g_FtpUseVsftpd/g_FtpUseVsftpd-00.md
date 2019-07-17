---
scapolite:
    class: group
    version: '0.51'
id: ftp_use_vsftpd
id_namespace: org.ssgproject.RHEL-8
title: Use vsftpd to Provide FTP Service if Necessary
description: <see below>
contents:
  - class: rule_ref
    idref: package_vsftpd_installed
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Install vsftpd Package
---


## /description

If
your use-case requires FTP service, install and set-up vsftpd to provide
it.
