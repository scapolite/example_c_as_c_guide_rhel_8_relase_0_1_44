---
scapolite:
    class: rule
    version: '0.51'
id: sebool_puppetmaster_use_db
id_namespace: org.ssgproject.RHEL-8
title: Disable the puppetmaster\_use\_db SELinux Boolean
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
        idref: ocil:ssg-sebool_puppetmaster_use_db_ocil:questionnaire:1
        href: sebool_puppetmaster_use_db.ocil.xml
---


## /rule

Disable the puppetmaster\_use\_db SELinux Boolean

## /description

By
default, the SELinux boolean `puppetmaster_use_db` is disabled. If this
setting is enabled, it should be disabled. To disable the
`puppetmaster_use_db` SELinux boolean, run the following command:

``` 
$ sudo setsebool -P puppetmaster_use_db off
```
