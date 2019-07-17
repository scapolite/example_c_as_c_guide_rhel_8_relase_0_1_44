---
scapolite:
    class: rule
    version: '0.51'
id: sebool_httpd_enable_cgi
id_namespace: org.ssgproject.RHEL-8
title: Configure the httpd\_enable\_cgi SELinux Boolean
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
        idref: ocil:ssg-sebool_httpd_enable_cgi_ocil:questionnaire:1
        href: sebool_httpd_enable_cgi.ocil.xml
---


## /rule

Configure the httpd\_enable\_cgi SELinux Boolean

## /description

By
default, the SELinux boolean `httpd_enable_cgi` is enabled. This setting
should be disabled unless `httpd` is used with `CGI` scripting. To
disable the `httpd_enable_cgi` SELinux boolean, run the following
command:

``` 
$ sudo setsebool -P httpd_enable_cgi off
```
