---
scapolite:
    class: group
    version: '0.51'
id: httpd_basic_authentication
id_namespace: org.ssgproject.RHEL-8
title: Minimize Modules for HTTP Basic Authentication
description: <see below>
contents: []
---


## /description

The
following modules are necessary if this web server will provide content
that will be restricted by a password.  
  
Authentication can be performed using local plain text password files
(`authn_file`), local DBM password files (`authn_dbm`) or an LDAP
directory. The only module required by the web server depends on your
choice of authentication. Comment out the modules you don\'t need from
the following:

``` 
LoadModule authn_file_module modules/mod_authn_file.so
LoadModule authn_dbm_module modules/mod_authn_dbm.so
```

`authn_alias` allows for authentication based on aliases. `authn_anon`
allows anonymous authentication similar to that of anonymous ftp sites.
`authz_owner` allows authorization based on file ownership. `authz_dbm`
allows for authorization based on group membership if the web server is
using DBM authentication.  
  
If the above functionality is unnecessary, comment out the related
module:

``` 
#LoadModule authn_alias_module modules/mod_authn_alias.so
#LoadModule authn_anon_module modules/mod_authn_anon.so
#LoadModule authz_owner_module modules/mod_authz_owner.so
#LoadModule authz_dbm_module modules/mod_authz_dbm.so
```
