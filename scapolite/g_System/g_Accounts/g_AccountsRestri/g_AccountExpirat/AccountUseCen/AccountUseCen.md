---
scapolite:
    class: rule
    version: '0.51'
id: account_use_centralized_automated_auth
id_namespace: org.ssgproject.RHEL-8
title: Use Centralized and Automated Authentication
rule: <see below>
rationale: <see below>
description: <see below>
applicability:
  - system: org.scapolite.xccdf.applicability
    severity: medium
checks:
  - relative_id: '01'
    automations:
      - system: http://scap.nist.gov/schema/ocil/2
        idref: ocil:ssg-account_use_centralized_automated_auth_ocil:questionnaire:1
        href: account_use_centralized_automated_auth.ocil.xml
---


## /rule

Use Centralized and Automated Authentication

## /rationale

A
comprehensive account management process that includes automation helps
to ensure the accounts designated as requiring attention are
consistently and promptly addressed. Enterprise environments make user
account management challenging and complex. A user management process
requiring administrators to manually address account management
functions adds risk of potential oversight.

## /description

Implement
an automated system for managing user accounts that minimizes the risk
of errors, either intentional or deliberate. This system should
integrate with an existing enterprise user management system, such as
one based on Identity Management tools such as Active Directory,
Kerberos, Directory Server, etc.
