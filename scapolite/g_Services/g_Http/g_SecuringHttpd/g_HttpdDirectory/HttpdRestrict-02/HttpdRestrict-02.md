---
scapolite:
    class: rule
    version: '0.51'
id: httpd_restrict_root_directory
id_namespace: org.ssgproject.RHEL-8
title: Restrict Root Directory
rule: <see below>
rationale: <see below>
description: <see below>
applicability:
  - system: org.scapolite.xccdf.applicability
---


## /rule

Restrict Root Directory

## /rationale

The
Web Server\'s root directory content should be protected from
unauthorized access by web clients.

## /description

The
`httpd` root directory should always have the most restrictive
configuration enabled.

``` 
<Directory / >
   Options None
   AllowOverride None
   Order allow,deny
</Directory>
```
