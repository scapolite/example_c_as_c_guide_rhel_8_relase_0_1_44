---
scapolite:
    class: rule
    version: '0.51'
id: sebool_httpd_graceful_shutdown
id_namespace: org.ssgproject.RHEL-8
title: Enable the httpd\_graceful\_shutdown SELinux Boolean
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
        idref: ocil:ssg-sebool_httpd_graceful_shutdown_ocil:questionnaire:1
        href: sebool_httpd_graceful_shutdown.ocil.xml
---


## /rule

Enable the httpd\_graceful\_shutdown SELinux Boolean

## /description

By
default, the SELinux boolean `httpd_graceful_shutdown` is enabled. If
this setting is disabled, it should be enabled. To enable the
`httpd_graceful_shutdown` SELinux boolean, run the following command:

``` 
$ sudo setsebool -P httpd_graceful_shutdown on
```
