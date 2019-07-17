---
scapolite:
    class: group
    version: '0.51'
id: httpd_minimize_loadable_modules
id_namespace: org.ssgproject.RHEL-8
title: Minimize Web Server Loadable Modules
description: <see below>
contents:
  - class: group_ref
    idref: httpd_core_modules
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: httpd Core Modules
---


## /description

A
default installation of `httpd` includes a plethora of dynamically
shared objects (DSO) that are loaded at run-time. Unlike the
aforementioned compiled-in modules, a DSO can be disabled in the
configuration file by removing the corresponding LoadModule directive.  
  
Note: A DSO only provides additional functionality if associated
directives are included in the `httpd` configuration file. It should
also be noted that removing a DSO will produce errors on `httpd` startup
if the configuration file contains directives that apply to that module.
Refer to `http://httpd.apache.org/docs/` for details on which directives
are associated with each DSO.  
  
Following each DSO removal, the configuration can be tested with the
following command to check if everything still works:

``` 
$ sudo service httpd configtest
```

The purpose of each of the modules loaded by default will now be
addressed one at a time. If none of a module\'s directives are being
used, remove it.
