---
scapolite:
    class: rule
    version: '0.51'
id: sebool_httpd_builtin_scripting
id_namespace: org.ssgproject.RHEL-8
title: Configure the httpd\_builtin\_scripting SELinux Boolean
rule: <see below>
description: <see below>
applicability:
  - system: org.scapolite.xccdf.applicability
    severity: medium
  - system: https://scap.nist.gov/schema/cpe/2.2
    cpes:
      - cpe:/a:machine
checks:
  - relative_id: '01'
    automations:
      - system: http://scap.nist.gov/schema/ocil/2
        idref: ocil:ssg-sebool_httpd_builtin_scripting_ocil:questionnaire:1
        href: sebool_httpd_builtin_scripting.ocil.xml
---


## /rule

Configure the httpd\_builtin\_scripting SELinux Boolean

## /description

By
default, the SELinux boolean `httpd_builtin_scripting` is enabled. This
setting should be disabled if `httpd` is not running `php` or some
similary scripting language. To disable the `httpd_builtin_scripting`
SELinux boolean, run the following command:

``` 
$ sudo setsebool -P httpd_builtin_scripting off
```
