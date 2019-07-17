---
scapolite:
    class: rule
    version: '0.51'
id: httpd_install_mod_ssl
id_namespace: org.ssgproject.RHEL-8
title: Install mod\_ssl
rule: <see below>
rationale: <see below>
description: <see below>
applicability:
  - system: org.scapolite.xccdf.applicability
---


## /rule

Install mod\_ssl

## /rationale

`mod_ssl`
provides encryption capabilities for the `httpd` Web server. Unencrypted
content is transmitted in plain text which could be passively monitored
and accessed by unauthorized parties.

## /description

Install
the `mod_ssl` module: The `mod_ssl` package can be installed with the
following command:

``` 
$ sudo yum install mod_ssl
```
