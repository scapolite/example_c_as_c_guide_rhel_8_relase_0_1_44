---
scapolite:
    class: group
    version: '0.51'
id: general-principles
id_namespace: org.ssgproject.RHEL-8
title: General Principles
description: <see below>
contents:
  - class: group_ref
    idref: principle-use-security-tools
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Configure Security Tools to Improve System Robustness
  - class: group_ref
    idref: principle-encrypt-transmitted-data
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Encrypt Transmitted Data Whenever Possible
  - class: group_ref
    idref: principle-least-privilege
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Least Privilege
  - class: group_ref
    idref: principle-minimize-software
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Minimize Software to Minimize Vulnerability
  - class: group_ref
    idref: principle-separate-servers
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Run Different Network Services on Separate Systems
---


## /description

The
following general principles motivate much of the advice in this guide
and should also influence any configuration decisions that are not
explicitly covered.
