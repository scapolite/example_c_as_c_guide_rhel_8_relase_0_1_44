---
scapolite:
    class: group
    version: '0.51'
id: httpd_configure_perl_securely
id_namespace: org.ssgproject.RHEL-8
title: Configure PERL Securely
description: <see below>
contents:
  - class: rule_ref
    idref: httpd_configure_perl_taint
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Configure HTTP PERL Scripts To Use TAINT Option
---


## /description

PERL
(Practical Extraction and Report Language) is an interpreted language
optimized for scanning arbitrary text files, extracting information from
those text files, and printing reports based on that information. The
language is often used in shell scripting and is intended to be
practical, easy to use, and efficient means of generating interactive
web pages for the user.
