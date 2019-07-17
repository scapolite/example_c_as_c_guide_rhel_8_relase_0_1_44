---
scapolite:
    class: group
    version: '0.51'
id: apt
id_namespace: org.ssgproject.RHEL-8
title: APT service configuration
description: <see below>
contents:
  - class: rule_ref
    idref: apt_conf_disallow_unauthenticated
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Disable unauthenticated repositories in APT configuration
  - class: rule_ref
    idref: apt_sources_list_official
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Ensure that official distribution repositories are used
---


## /description

The
apt service manage the package management and update of the whole
system. Its configuration need to be properly defined to ensure
efficient security updates, packages and repository authentication and
proper lifecycle management.
