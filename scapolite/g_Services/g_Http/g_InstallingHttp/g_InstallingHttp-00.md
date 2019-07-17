---
scapolite:
    class: group
    version: '0.51'
id: installing_httpd
id_namespace: org.ssgproject.RHEL-8
title: Install Apache if Necessary
description: <see below>
contents:
  - class: group_ref
    idref: httpd_minimal_modules_installed
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Confirm Minimal Built-in Modules Installed
---


## /description

If
`httpd` was not installed and activated, but the system needs to act as
a web server, then it should be installed on the system. Follow these
guidelines to install it defensively. The `httpd` package can be
installed with the following command:

``` 
$ sudo yum install httpd
```

This method of installation is recommended over installing the \"Web
Server\" package group during the system installation process. The Web
Server package group includes many packages which are likely extraneous,
while the command-line method installs only the required `httpd` package
itself.
