---
scapolite:
    class: group
    version: '0.51'
id: disabling_dovecot
id_namespace: org.ssgproject.RHEL-8
title: Disable Dovecot
description: <see below>
contents:
  - class: rule_ref
    idref: service_dovecot_disabled
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Disable Dovecot Service
  - class: rule_ref
    idref: package_dovecot_removed
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Uninstall dovecot Package
---


## /description

If
the system does not need to operate as an IMAP or POP3 server, the
dovecot software should be disabled and removed.
