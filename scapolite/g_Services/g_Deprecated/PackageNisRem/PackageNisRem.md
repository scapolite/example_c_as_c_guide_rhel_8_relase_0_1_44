---
scapolite:
    class: rule
    version: '0.51'
id: package_nis_removed
id_namespace: org.ssgproject.RHEL-8
title: Uninstall the nis package
rule: <see below>
rationale: <see below>
description: <see below>
applicability:
  - system: org.scapolite.xccdf.applicability
    severity: low
---


## /rule

Uninstall the nis package

## /rationale

NIS
is the historical SUN service for central account management, more and
more replaced by LDAP. NIS does not support efficiently security
constraints, ACL, etc. and should not be used.

## /description

The
support for Yellowpages should not be installed unless it is required.
