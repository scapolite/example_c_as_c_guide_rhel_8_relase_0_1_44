---
scapolite:
    class: group
    version: '0.51'
id: disabling_vsftpd
id_namespace: org.ssgproject.RHEL-8
title: Disable vsftpd if Possible
description: <see below>
contents:
  - class: rule_ref
    idref: service_vsftpd_disabled
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Disable vsftpd Service
  - class: rule_ref
    idref: package_vsftpd_removed
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Uninstall vsftpd Package
---


## /description

To
minimize attack surface, disable vsftpd if at all possible.
