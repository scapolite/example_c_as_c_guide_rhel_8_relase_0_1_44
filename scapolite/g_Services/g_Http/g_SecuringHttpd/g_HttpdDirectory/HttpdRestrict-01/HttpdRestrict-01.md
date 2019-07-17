---
scapolite:
    class: rule
    version: '0.51'
id: httpd_restrict_critical_directories
id_namespace: org.ssgproject.RHEL-8
title: Restrict Other Critical Directories
rule: <see below>
rationale: <see below>
description: <see below>
applicability:
  - system: org.scapolite.xccdf.applicability
---


## /rule

Restrict Other Critical Directories

## /rationale

Directories
accessible from a web client should be configured with the least amount
of access possible in order to avoid unauthorized access to restricted
content or server information.

## /description

All
accessible web directories should be configured with similarly
restrictive settings. The `Options` directive should be limited to
necessary functionality and the `AllowOverride` directive should be used
only if needed. The `Order` and `Deny` access control tags should be
used to deny access by default, allowing access only where necessary.
