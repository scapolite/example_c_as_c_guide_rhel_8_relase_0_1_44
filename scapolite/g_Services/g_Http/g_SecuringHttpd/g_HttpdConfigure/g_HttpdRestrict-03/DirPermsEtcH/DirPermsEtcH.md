---
scapolite:
    class: rule
    version: '0.51'
id: dir_perms_etc_httpd_conf
id_namespace: org.ssgproject.RHEL-8
title: Set Permissions on the /etc/httpd/conf/ Directory
rule: <see below>
rationale: <see below>
description: <see below>
applicability:
  - system: org.scapolite.xccdf.applicability
checks:
  - relative_id: '01'
    automations:
      - system: http://oval.mitre.org/XMLSchema/oval-definitions-5
        idref: oval:ssg-dir_perms_etc_httpd_conf:def:1
        href: dir_perms_etc_httpd_conf.oval.xml
  - relative_id: '02'
    automations:
      - system: http://scap.nist.gov/schema/ocil/2
        idref: ocil:ssg-dir_perms_etc_httpd_conf_ocil:questionnaire:1
        href: dir_perms_etc_httpd_conf.ocil.xml
---


## /rule

Set Permissions on the /etc/httpd/conf/ Directory

## /rationale

Access
to the web server\'s configuration files may allow an unauthorized user
or attacker to access information about the web server or alter the
server\'s configuration files.

## /description

To properly set the permissions of `/etc/http/conf`, run the command:

``` 
$ sudo chmod 0750 /etc/http/conf
```
