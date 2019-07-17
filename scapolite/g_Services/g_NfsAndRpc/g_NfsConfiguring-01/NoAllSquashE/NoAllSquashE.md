---
scapolite:
    class: rule
    version: '0.51'
id: no_all_squash_exports
id_namespace: org.ssgproject.RHEL-8
title: Ensure All-Squashing Disabled On All Exports
rule: <see below>
rationale: <see below>
description: <see below>
applicability:
  - system: org.scapolite.xccdf.applicability
    severity: low
checks:
  - relative_id: '01'
    automations:
      - system: http://scap.nist.gov/schema/ocil/2
        idref: ocil:ssg-no_all_squash_exports_ocil:questionnaire:1
        href: no_all_squash_exports.ocil.xml
---


## /rule

Ensure All-Squashing Disabled On All Exports

## /rationale

The
all\_squash option maps all client requests to a single anonymous
uid/gid on the NFS server, negating the ability to track file access by
user ID.

## /description

The
`all_squash` maps all uids and gids to an anonymous user. This should be
disabled by removing any instances of the `all_squash` option from the
file `/etc/exports`.
