---
scapolite:
    class: rule
    version: '0.51'
id: httpd_restrict_web_directory
id_namespace: org.ssgproject.RHEL-8
title: Restrict Web Directory
rule: <see below>
rationale: <see below>
description: <see below>
applicability:
  - system: org.scapolite.xccdf.applicability
---


## /rule

Restrict Web Directory

## /rationale

Access
to the web server\'s directory hierarchy could allow access to
unauthorized files by web clients. Following symbolic links could also
allow such access.

## /description

The
default configuration for the web (`/var/www/html`) Directory allows
directory indexing (`Indexes`) and the following of symbolic links
(`FollowSymLinks`). Neither of these is recommended.  
  
The `/var/www/html` directory hierarchy should not be viewable via the
web, and symlinks should only be followed if the owner of the symlink
also owns the linked file.  
  
Ensure that this policy is adhered to by altering the related section of
the configuration:

``` 
<Directory "/var/www/html">
#  ...
   Options SymLinksIfOwnerMatch
#  ...
</Directory>
```
