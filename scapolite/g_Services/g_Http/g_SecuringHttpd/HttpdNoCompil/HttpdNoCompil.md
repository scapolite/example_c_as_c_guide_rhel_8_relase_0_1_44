---
scapolite:
    class: rule
    version: '0.51'
id: httpd_no_compilers_in_prod
id_namespace: org.ssgproject.RHEL-8
title: Installation of a compiler on production web server is prohibited
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
        idref: ocil:ssg-httpd_no_compilers_in_prod_ocil:questionnaire:1
        href: httpd_no_compilers_in_prod.ocil.xml
crossrefs:
  - system: http://iase.disa.mil/stigs/os/unix-linux/Pages/index.aspx
    idref: RHEL-08-WG080
    relation: ''
---


## /rule

Installation of a compiler on production web server is prohibited

## /rationale

An
attacker\'s code could be uploaded and compiled on the server under
attack.

## /description

The
presence of a compiler on a production server facilitates the malicious
user\'s task of creating custom versions of programs and installing
Trojan Horses or viruses.
