---
scapolite:
    class: group
    version: '0.51'
id: httpd_restrict_info_leakage
id_namespace: org.ssgproject.RHEL-8
title: Restrict Web Server Information Leakage
description: <see below>
contents:
  - class: rule_ref
    idref: httpd_servertokens_prod
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Set httpd ServerTokens Directive to Prod
  - class: rule_ref
    idref: httpd_serversignature_off
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Set httpd ServerSignature Directive to Off
---


## /description

The
`ServerTokens` and `ServerSignature` directives determine how much
information the web server discloses about the configuration of the
system.
