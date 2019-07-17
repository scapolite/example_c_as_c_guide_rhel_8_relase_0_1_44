---
scapolite:
    class: group
    version: '0.51'
id: postfix_server_relay
id_namespace: org.ssgproject.RHEL-8
title: Control Mail Relaying
description: <see below>
contents:
  - class: group_ref
    idref: postfix_server_relay_smtp_auth_for_untrusted
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Require SMTP AUTH Before Relaying from Untrusted Clients
  - class: group_ref
    idref: postfix_server_mail_smtpd_recipient_restrictions
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Enact SMTP Recipient Restrictions
  - class: group_ref
    idref: postfix_server_relay_require_tls
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Use TLS for SMTP AUTH
  - class: group_ref
    idref: postfix_server_mail_smtpd_relay_restrictions
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Enact SMTP Relay Restrictions
  - class: group_ref
    idref: postfix_server_relay_set_trusted
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Configure Trusted Networks and Hosts
  - class: rule_ref
    idref: postfix_prevent_unrestricted_relay
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Prevent Unrestricted Mail Relaying
---


## /description

Postfix\'s
mail relay controls are implemented with the help of the smtpd recipient
restrictions option, which controls the restrictions placed on the SMTP
dialogue once the sender and recipient envelope addresses are known. The
guidance in the following sections should be applied to all systems. If
there are systems which must be allowed to relay mail, but which cannot
be trusted to relay unconditionally, configure SMTP AUTH with SSL
support.
