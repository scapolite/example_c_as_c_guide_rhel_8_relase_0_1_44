---
scapolite:
    class: rule
    version: '0.51'
id: sebool_unprivuser_use_svirt
id_namespace: org.ssgproject.RHEL-8
title: Disable the unprivuser\_use\_svirt SELinux Boolean
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
        idref: ocil:ssg-sebool_unprivuser_use_svirt_ocil:questionnaire:1
        href: sebool_unprivuser_use_svirt.ocil.xml
---


## /rule

Disable the unprivuser\_use\_svirt SELinux Boolean

## /description

By
default, the SELinux boolean `unprivuser_use_svirt` is disabled. If this
setting is enabled, it should be disabled. To disable the
`unprivuser_use_svirt` SELinux boolean, run the following command:

``` 
$ sudo setsebool -P unprivuser_use_svirt off
```
