---
scapolite:
    class: group
    version: '0.51'
id: postfix_client
id_namespace: org.ssgproject.RHEL-8
title: Configure SMTP For Mail Clients
description: <see below>
values:
  - id: var_postfix_root_mail_alias
    id_namespace: org.ssgproject.RHEL-8
    title: Postfix Root Mail Alias
    description: |
        Specify
        an email address (string) for a root mail alias.
    type: string
    definitions:
      - value: system.administrator@mail.mil
contents:
  - class: rule_ref
    idref: postfix_client_configure_mail_alias
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Configure System to Forward All Mail For The Root Account
  - class: rule_ref
    idref: postfix_network_listening_disabled
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Disable Postfix Network Listening
---


## /description

This
section discusses settings for Postfix in a submission-only e-mail
configuration.
