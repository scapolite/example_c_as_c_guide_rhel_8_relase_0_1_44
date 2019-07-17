---
scapolite:
    class: group
    version: '0.51'
id: configure_dovecot
id_namespace: org.ssgproject.RHEL-8
title: Configure Dovecot if Necessary
description: <see below>
contents:
  - class: group_ref
    idref: dovecot_enabling_ssl
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Enable SSL Support
  - class: group_ref
    idref: dovecot_support_necessary_protocols
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Support Only the Necessary Protocols
  - class: group_ref
    idref: dovecot_allow_imap_access
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Allow IMAP Clients to Access the Server
---


## /description

If
the system will operate as an IMAP or POP3 server, the dovecot software
should be configured securely by following the recommendations below.
