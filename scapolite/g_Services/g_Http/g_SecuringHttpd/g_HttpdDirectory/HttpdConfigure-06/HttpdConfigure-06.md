---
scapolite:
    class: rule
    version: '0.51'
id: httpd_configure_script_permissions
id_namespace: org.ssgproject.RHEL-8
title: Remove Write Permissions From Filesystem Paths And Server Scripts
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
        idref: ocil:ssg-httpd_configure_script_permissions_ocil:questionnaire:1
        href: httpd_configure_script_permissions.ocil.xml
crossrefs:
  - system: http://iase.disa.mil/stigs/os/unix-linux/Pages/index.aspx
    idref: RHEL-08-WG290
    relation: ''
---


## /rule

Remove Write Permissions From Filesystem Paths And Server Scripts

## /rationale

Excessive
permissions for the anonymous web user account are one of the most
common faults contributing to the compromise of a web server. If this
user is able to upload and execute files on the web server, the
organization or owner of the server will no longer have control of the
asset.

## /description

Configure
permissions for each instance of `Alias`, `ScriptAlias`, and
`ScriptAliasMatch` that exist.

``` 
$ sudo find DIR -type d -exec chmod 755 {} \;
$ sudo find DIR -type f -exec chmod 555 {} \;
```

Where *DIR* matches the paths from `Alias`, `ScriptAlias`, and
`ScriptAliasMatch`.
