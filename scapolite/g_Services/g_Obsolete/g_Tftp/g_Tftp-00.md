---
scapolite:
    class: group
    version: '0.51'
id: tftp
id_namespace: org.ssgproject.RHEL-8
title: TFTP Server
description: <see below>
contents:
  - class: rule_ref
    idref: tftpd_uses_secure_mode
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Ensure tftp Daemon Uses Secure Mode
  - class: rule_ref
    idref: service_tftp_disabled
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Disable tftp Service
  - class: rule_ref
    idref: package_tftp_removed
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Remove tftp Daemon
  - class: rule_ref
    idref: package_tftp-server_removed
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Uninstall tftp-server Package
---


## /description

TFTP
is a lightweight version of the FTP protocol which has traditionally
been used to configure networking equipment. However, TFTP provides
little security, and modern versions of networking operating systems
frequently support configuration via SSH or other more secure protocols.
A TFTP server should be run only if no more secure method of supporting
existing equipment can be found.
