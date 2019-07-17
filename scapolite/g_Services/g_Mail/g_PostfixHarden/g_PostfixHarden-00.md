---
scapolite:
    class: group
    version: '0.51'
id: postfix_harden_os
id_namespace: org.ssgproject.RHEL-8
title: Configure Operating System to Protect Mail Server
description: <see below>
contents:
  - class: group_ref
    idref: postfix_configure_ssl_certs
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Configure SSL Certificates for Use with SMTP AUTH
  - class: group_ref
    idref: postfix_server_cfg
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Configure Postfix if Necessary
---


## /description

The
guidance in this section is appropriate for any host which is operating
as a site MTA, whether the mail server runs using Sendmail, Postfix, or
some other software.
