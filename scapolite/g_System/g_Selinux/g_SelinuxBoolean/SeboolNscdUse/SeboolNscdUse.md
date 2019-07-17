---
scapolite:
    class: rule
    version: '0.51'
id: sebool_nscd_use_shm
id_namespace: org.ssgproject.RHEL-8
title: Enable the nscd\_use\_shm SELinux Boolean
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
        idref: ocil:ssg-sebool_nscd_use_shm_ocil:questionnaire:1
        href: sebool_nscd_use_shm.ocil.xml
---


## /rule

Enable the nscd\_use\_shm SELinux Boolean

## /description

By
default, the SELinux boolean `nscd_use_shm` is enabled. If this setting
is disabled, it should be enabled to allow `nscd` to use shared memory.
To enable the `nscd_use_shm` SELinux boolean, run the following command:

``` 
$ sudo setsebool -P nscd_use_shm on
```
