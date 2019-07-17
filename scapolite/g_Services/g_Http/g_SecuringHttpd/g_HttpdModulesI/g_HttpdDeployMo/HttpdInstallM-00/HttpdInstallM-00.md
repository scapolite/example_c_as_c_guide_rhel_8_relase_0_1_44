---
scapolite:
    class: rule
    version: '0.51'
id: httpd_install_mod_security
id_namespace: org.ssgproject.RHEL-8
title: Install mod\_security
rule: <see below>
rationale: <see below>
description: <see below>
applicability:
  - system: org.scapolite.xccdf.applicability
---


## /rule

Install mod\_security

## /rationale

`mod_security`
provides an additional level of protection for the web server by
enabling the administrator to implement content access policies and
filters at the application layer.

## /description

Install
the `security` module: The `mod_security` package can be installed with
the following command:

``` 
$ sudo yum install mod_security
```
