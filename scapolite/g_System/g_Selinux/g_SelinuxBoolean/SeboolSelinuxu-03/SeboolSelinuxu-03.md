---
scapolite:
    class: rule
    version: '0.51'
id: sebool_selinuxuser_direct_dri_enabled
id_namespace: org.ssgproject.RHEL-8
title: Configure the selinuxuser\_direct\_dri\_enabled SELinux Boolean
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
        idref: ocil:ssg-sebool_selinuxuser_direct_dri_enabled_ocil:questionnaire:1
        href: sebool_selinuxuser_direct_dri_enabled.ocil.xml
---


## /rule

Configure the selinuxuser\_direct\_dri\_enabled SELinux Boolean

## /description

By
default, the SELinux boolean `selinuxuser_direct_dri_enabled` is
enabled. If XWindows is not installed or used on the system, this
setting should be disabled. Otherwise, enable it. To disable the
`selinuxuser_direct_dri_enabled` SELinux boolean, run the following
command:

``` 
$ sudo setsebool -P selinuxuser_direct_dri_enabled off
```
