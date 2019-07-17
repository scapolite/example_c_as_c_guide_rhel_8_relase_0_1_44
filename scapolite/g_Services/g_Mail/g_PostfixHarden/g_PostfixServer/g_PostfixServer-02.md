---
scapolite:
    class: group
    version: '0.51'
id: postfix_server_cfg
id_namespace: org.ssgproject.RHEL-8
title: Configure Postfix if Necessary
description: <see below>
contents:
  - class: group_ref
    idref: postfix_server_relay
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Control Mail Relaying
  - class: group_ref
    idref: postfix_server_dos
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Configure Postfix Resource Usage to Limit Denial of Service ...
  - class: rule_ref
    idref: postfix_server_banner
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Configure SMTP Greeting Banner
---


## /description

Postfix
stores its configuration files in the directory /etc/postfix by default.
The primary configuration file is `/etc/postfix/main.cf`.
