---
scapolite:
    class: rule
    version: '0.51'
id: sebool_unconfined_login
id_namespace: org.ssgproject.RHEL-8
title: Enable the unconfined\_login SELinux Boolean
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
        idref: ocil:ssg-sebool_unconfined_login_ocil:questionnaire:1
        href: sebool_unconfined_login.ocil.xml
---


## /rule

Enable the unconfined\_login SELinux Boolean

## /description

By
default, the SELinux boolean `unconfined_login` is enabled. If this
setting is disabled, it should be enabled. To enable the
`unconfined_login` SELinux boolean, run the following command:

``` 
$ sudo setsebool -P unconfined_login on
```
