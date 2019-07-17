---
scapolite:
    class: rule
    version: '0.51'
id: sebool_cluster_use_execmem
id_namespace: org.ssgproject.RHEL-8
title: Disable the cluster\_use\_execmem SELinux Boolean
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
        idref: ocil:ssg-sebool_cluster_use_execmem_ocil:questionnaire:1
        href: sebool_cluster_use_execmem.ocil.xml
---


## /rule

Disable the cluster\_use\_execmem SELinux Boolean

## /description

By
default, the SELinux boolean `cluster_use_execmem` is disabled. If this
setting is enabled, it should be disabled. To disable the
`cluster_use_execmem` SELinux boolean, run the following command:

``` 
$ sudo setsebool -P cluster_use_execmem off
```
