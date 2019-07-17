---
scapolite:
    class: rule
    version: '0.51'
id: apt_conf_disallow_unauthenticated
id_namespace: org.ssgproject.RHEL-8
title: Disable unauthenticated repositories in APT configuration
rule: <see below>
rationale: <see below>
description: <see below>
applicability:
  - system: org.scapolite.xccdf.applicability
crossrefs:
  - system: http://www.ssi.gouv.fr/administration/bonnes-pratiques/
    idref: NT28(R15)
    relation: ''
---


## /rule

Disable unauthenticated repositories in APT configuration

## /rationale

Repositories
hosts all packages that will be intsalled on the system during update.
If a repository is not authenticated, the associated packages can\'t be
trusted, and then should not be installed localy.

## /description

Unauthenticated
repositories should not be used for updates.
