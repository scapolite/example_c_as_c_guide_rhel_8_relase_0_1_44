---
scapolite:
    class: rule
    version: '0.51'
id: sebool_httpd_execmem
id_namespace: org.ssgproject.RHEL-8
title: Disable the httpd\_execmem SELinux Boolean
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
        idref: ocil:ssg-sebool_httpd_execmem_ocil:questionnaire:1
        href: sebool_httpd_execmem.ocil.xml
---


## /rule

Disable the httpd\_execmem SELinux Boolean

## /description

By
default, the SELinux boolean `httpd_execmem` is disabled. If this
setting is enabled, it should be disabled. To disable the
`httpd_execmem` SELinux boolean, run the following command:

``` 
$ sudo setsebool -P httpd_execmem off
```
