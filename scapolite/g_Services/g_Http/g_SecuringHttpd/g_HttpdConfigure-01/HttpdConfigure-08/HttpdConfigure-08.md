---
scapolite:
    class: rule
    version: '0.51'
id: httpd_configure_perl_taint
id_namespace: org.ssgproject.RHEL-8
title: Configure HTTP PERL Scripts To Use TAINT Option
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
        idref: ocil:ssg-httpd_configure_perl_taint_ocil:questionnaire:1
        href: httpd_configure_perl_taint.ocil.xml
crossrefs:
  - system: http://iase.disa.mil/stigs/os/unix-linux/Pages/index.aspx
    idref: RHEL-08-WG460
    relation: ''
---


## /rule

Configure HTTP PERL Scripts To Use TAINT Option

## /rationale

PERL
(Practical Extraction and Report Language) is an interpreted language
optimized for scanning arbitrary text files, extracting information from
those text files, and printing reports based on that information. The
language is often used in shell scripting and is intended to be
practical, easy to use, and efficient means of generating interactive
web pages for the user. Unfortunately, many widely available freeware
PERL programs (scripts) are extremely insecure. This is most readily
accomplished by a malicious user substituting input to a PERL script
during a POST or a GET operation.  
  
Consequently, the founders of PERL have developed a mechanism named
TAINT that protects the system from malicious input sent from outside
the program. When the data is tainted, it cannot be used in programs or
functions such as eval(), system(), exec(), pipes, or popen(). The
script will exit with a warning message.

## /description

If
the `mod_perl` module is installed, enable Perl Taint checking in
`/etc/httpd/conf/httpd.conf`. To enable Perl Taint checking, add or
uncomment the following to `/etc/httpd/conf.d/perl.conf`:

``` 
PerlSwitches -T
```
