---
scapolite:
    class: rule
    version: '0.51'
id: httpd_url_correction
id_namespace: org.ssgproject.RHEL-8
title: Disable URL Correction on Misspelled Entries
rule: <see below>
rationale: <see below>
description: <see below>
applicability:
  - system: org.scapolite.xccdf.applicability
---


## /rule

Disable URL Correction on Misspelled Entries

## /rationale

Minimizing
the number of loadable modules available to the web server reduces risk
by limiting the capabilities allowed by the web server.

## /description

The
`speling` module attempts to find a document match by allowing one
misspelling in an otherwise failed request. If this functionality is
unnecessary, comment out the module:

``` 
#LoadModule speling_module modules/mod_speling.so
```

This functionality weakens server security by making site enumeration
easier.
