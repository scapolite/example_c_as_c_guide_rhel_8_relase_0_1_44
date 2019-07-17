---
scapolite:
    class: group
    version: '0.51'
id: httpd_chroot
id_namespace: org.ssgproject.RHEL-8
title: Run httpd in a chroot Jail if Practical
description: <see below>
contents: []
---


## /description

Running
`httpd` inside a `chroot` jail is designed to isolate the web server
process to a small section of the filesystem, limiting the damage if it
is compromised. Versions of Apache greater than 2.2.10 (such as the one
included with Red Hat Enterprise Linux 8) provide the `ChrootDir`
directive. To run Apache inside a chroot jail in `/chroot/apache`, add
the following line to `/etc/httpd/conf/httpd.conf`:

``` 
ChrootDir /chroot/apache
```

This necessitates placing all files required by `httpd` inside
`/chroot/apache` , including `httpd`\'s binaries, modules, configuration
files, and served web pages. The details of this configuration are
beyond the scope of this guide. This may also require additional SELinux
configuration.
