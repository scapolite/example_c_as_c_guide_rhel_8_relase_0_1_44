---
scapolite:
    class: rule
    version: '0.51'
id: sebool_httpd_run_stickshift
id_namespace: org.ssgproject.RHEL-8
title: Disable the httpd\_run\_stickshift SELinux Boolean
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
        idref: ocil:ssg-sebool_httpd_run_stickshift_ocil:questionnaire:1
        href: sebool_httpd_run_stickshift.ocil.xml
---


## /rule

Disable the httpd\_run\_stickshift SELinux Boolean

## /description

By
default, the SELinux boolean `httpd_run_stickshift` is disabled. If this
setting is enabled, it should be disabled. To disable the
`httpd_run_stickshift` SELinux boolean, run the following command:

``` 
$ sudo setsebool -P httpd_run_stickshift off
```