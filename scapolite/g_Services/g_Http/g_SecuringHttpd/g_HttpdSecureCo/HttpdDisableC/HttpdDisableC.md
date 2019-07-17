---
scapolite:
    class: rule
    version: '0.51'
id: httpd_disable_content_symlinks
id_namespace: org.ssgproject.RHEL-8
title: Disable Web Content Symbolic Links
rule: <see below>
rationale: <see below>
description: <see below>
applicability:
  - system: org.scapolite.xccdf.applicability
    severity: high
checks:
  - relative_id: '01'
    automations:
      - system: http://scap.nist.gov/schema/ocil/2
        idref: ocil:ssg-httpd_disable_content_symlinks_ocil:questionnaire:1
        href: httpd_disable_content_symlinks.ocil.xml
crossrefs:
  - system: http://iase.disa.mil/stigs/os/unix-linux/Pages/index.aspx
    idref: RHEL-08-WG360
    relation: ''
---


## /rule

Disable Web Content Symbolic Links

## /rationale

A
symbolic link allows a file or a directory to be referenced using a
symbolic name raising a potential hazard if symbolic linkage is made to
a sensitive area. When web scripts are executed and symbolic links are
allowed, the web user could be allowed to access locations on the web
server that are outside the scope of the web document root or home
directory.

## /description

For
each `<Directory>` instance, remove the following:

``` 
FollowSymLinks
```

If symbolic links are allowed, the following can be added for each
`<Directory>` instance:

``` 
Options SymLinksIfOwnerMatchDisable
```
