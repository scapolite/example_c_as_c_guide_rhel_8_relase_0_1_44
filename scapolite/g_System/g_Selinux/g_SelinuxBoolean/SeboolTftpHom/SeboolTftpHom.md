---
scapolite:
    class: rule
    version: '0.51'
id: sebool_tftp_home_dir
id_namespace: org.ssgproject.RHEL-8
title: Disable the tftp\_home\_dir SELinux Boolean
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
        idref: ocil:ssg-sebool_tftp_home_dir_ocil:questionnaire:1
        href: sebool_tftp_home_dir.ocil.xml
---


## /rule

Disable the tftp\_home\_dir SELinux Boolean

## /description

By
default, the SELinux boolean `tftp_home_dir` is disabled. If this
setting is enabled, it should be disabled. To disable the
`tftp_home_dir` SELinux boolean, run the following command:

``` 
$ sudo setsebool -P tftp_home_dir off
```
