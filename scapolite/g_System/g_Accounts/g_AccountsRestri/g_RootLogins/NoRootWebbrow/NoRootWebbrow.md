---
scapolite:
    class: rule
    version: '0.51'
id: no_root_webbrowsing
id_namespace: org.ssgproject.RHEL-8
title: Restrict Web Browser Use for Administrative Accounts
rule: <see below>
rationale: <see below>
description: <see below>
applicability:
  - system: org.scapolite.xccdf.applicability
checks:
  - relative_id: '01'
    automations:
      - system: http://scap.nist.gov/schema/ocil/2
        idref: ocil:ssg-no_root_webbrowsing_ocil:questionnaire:1
        href: no_root_webbrowsing.ocil.xml
---


## /rule

Restrict Web Browser Use for Administrative Accounts

## /rationale

If
a browser vulnerability is exploited while running with administrative
privileges, the entire system could be compromised. Specific exceptions
for local service administration should be documented in site-defined
policy.

## /description

Enforce
policy requiring administrative accounts use web browsers only for local
service administration.
