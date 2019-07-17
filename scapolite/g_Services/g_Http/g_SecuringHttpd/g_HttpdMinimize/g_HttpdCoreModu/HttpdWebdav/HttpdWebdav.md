---
scapolite:
    class: rule
    version: '0.51'
id: httpd_webdav
id_namespace: org.ssgproject.RHEL-8
title: Disable WebDAV (Distributed Authoring and Versioning)
rule: <see below>
rationale: <see below>
description: <see below>
applicability:
  - system: org.scapolite.xccdf.applicability
---


## /rule

Disable WebDAV (Distributed Authoring and Versioning)

## /rationale

Minimizing
the number of loadable modules available to the web server, reduces risk
by limiting the capabilities allowed by the web server.

## /description

WebDAV
is an extension of the HTTP protocol that provides distributed and
collaborative access to web content. If its functionality is
unnecessary, comment out the related modules:

``` 
#LoadModule dav_module modules/mod_dav.so
#LoadModule dav_fs_module modules/mod_dav_fs.so
```

If there is a critical need for WebDAV, extra care should be taken in
its configuration. Since DAV access allows remote clients to manipulate
server files, any location on the server that is DAV enabled should be
protected by access controls.
