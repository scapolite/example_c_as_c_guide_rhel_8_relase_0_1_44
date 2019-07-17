---
scapolite:
    class: rule
    version: '0.51'
id: apt_sources_list_official
id_namespace: org.ssgproject.RHEL-8
title: Ensure that official distribution repositories are used
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

Ensure that official distribution repositories are used

## /rationale

The
Debian distribution deliver DSA (Debian Security Announce), through the
official Debian security repository, to correct various vulnerabilities
impacting the Debian packages. Using the official repositories is the
best way to ensure that the Debian updates are integrated soon enough.

## /description

Check
that official Debian repositories, including security repository, are
configured in apt.
