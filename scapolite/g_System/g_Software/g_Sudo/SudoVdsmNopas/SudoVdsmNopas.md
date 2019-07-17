---
scapolite:
    class: rule
    version: '0.51'
id: sudo_vdsm_nopasswd
id_namespace: org.ssgproject.RHEL-8
title: Only the VDSM User Can Use sudo NOPASSWD
rule: <see below>
rationale: <see below>
description: <see below>
applicability:
  - system: org.scapolite.xccdf.applicability
    severity: medium
checks:
  - relative_id: '01'
    automations:
      - system: http://oval.mitre.org/XMLSchema/oval-definitions-5
        idref: oval:ssg-sudo_vdsm_nopasswd:def:1
        href: sudo_vdsm_nopasswd.oval.xml
  - relative_id: '02'
    automations:
      - system: http://scap.nist.gov/schema/ocil/2
        idref: ocil:ssg-sudo_vdsm_nopasswd_ocil:questionnaire:1
        href: sudo_vdsm_nopasswd.ocil.xml
---


## /rule

Only the VDSM User Can Use sudo NOPASSWD

## /rationale

Without
re-authentication, users may access resources or perform tasks for which
they do not have authorization.  
  
When operating systems provide the capability to escalate a functional
capability, it is critical that the user re-authenticate.

## /description

The
sudo `NOPASSWD` tag, when specified, allows a user to execute commands
using sudo without having to authenticate. Only the `vdsm` user should
have this capability in any sudo configuration snippets in
`/etc/sudoers.d/`.
