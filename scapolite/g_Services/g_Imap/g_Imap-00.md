---
scapolite:
    class: group
    version: '0.51'
id: imap
id_namespace: org.ssgproject.RHEL-8
title: IMAP and POP3 Server
description: <see below>
contents:
  - class: group_ref
    idref: configure_dovecot
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Configure Dovecot if Necessary
  - class: group_ref
    idref: disabling_dovecot
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Disable Dovecot
---


## /description

Dovecot
provides IMAP and POP3 services. It is not installed by default. The
project page at <http://www.dovecot.org> contains more detailed
information about Dovecot configuration.
