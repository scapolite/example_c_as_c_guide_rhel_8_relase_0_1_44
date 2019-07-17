---
scapolite:
    class: group
    version: '0.51'
id: r_services
id_namespace: org.ssgproject.RHEL-8
title: Rlogin, Rsh, and Rexec
description: <see below>
contents:
  - class: rule_ref
    idref: package_rsh_removed
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Uninstall rsh Package
  - class: rule_ref
    idref: service_rlogin_disabled
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Disable rlogin Service
  - class: rule_ref
    idref: package_rsh-server_removed
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Uninstall rsh-server Package
  - class: rule_ref
    idref: no_user_host_based_files
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Remove User Host-Based Authentication Files
  - class: rule_ref
    idref: service_rexec_disabled
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Disable rexec Service
  - class: rule_ref
    idref: service_rsh_disabled
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Disable rsh Service
  - class: rule_ref
    idref: no_rsh_trust_files
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Remove Rsh Trust Files
  - class: rule_ref
    idref: no_host_based_files
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Remove Host-Based Authentication Files
---


## /description

The
Berkeley r-commands are legacy services which allow cleartext remote
access and have an insecure trust model.
