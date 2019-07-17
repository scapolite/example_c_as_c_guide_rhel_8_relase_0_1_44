---
scapolite:
    class: rule
    version: '0.51'
id: sebool_xend_run_blktap
id_namespace: org.ssgproject.RHEL-8
title: Enable the xend\_run\_blktap SELinux Boolean
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
        idref: ocil:ssg-sebool_xend_run_blktap_ocil:questionnaire:1
        href: sebool_xend_run_blktap.ocil.xml
---


## /rule

Enable the xend\_run\_blktap SELinux Boolean

## /description

By
default, the SELinux boolean `xend_run_blktap` is enabled. If this
setting is disabled, it should be enabled. To enable the
`xend_run_blktap` SELinux boolean, run the following command:

``` 
$ sudo setsebool -P xend_run_blktap on
```
