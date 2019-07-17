---
scapolite:
    class: group
    version: '0.51'
id: httpd_minimal_modules_installed
id_namespace: org.ssgproject.RHEL-8
title: Confirm Minimal Built-in Modules Installed
description: <see below>
contents: []
---


## /description

The
default `httpd` installation minimizes the number of modules that are
compiled directly into the binary (`core prefork http_core mod_so`).
This minimizes risk by limiting the capabilities allowed by the web
server. Query the set of compiled-in modules using the following
command:

``` 
$ httpd -l
```

If the number of compiled-in modules is significantly larger than the
aforementioned set, this guide recommends re-installing `httpd` with a
reduced configuration. Minimizing the number of modules that are
compiled into the `httpd` binary, reduces risk by limiting the
capabilities allowed by the webserver.
