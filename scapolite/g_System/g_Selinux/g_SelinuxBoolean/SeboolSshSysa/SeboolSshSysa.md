---
scapolite:
    class: rule
    version: '0.51'
id: sebool_ssh_sysadm_login
id_namespace: org.ssgproject.RHEL-8
title: Disable the ssh\_sysadm\_login SELinux Boolean
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
        idref: ocil:ssg-sebool_ssh_sysadm_login_ocil:questionnaire:1
        href: sebool_ssh_sysadm_login.ocil.xml
---


## /rule

Disable the ssh\_sysadm\_login SELinux Boolean

## /description

By
default, the SELinux boolean `ssh_sysadm_login` is disabled. If this
setting is enabled, it should be disabled. To disable the
`ssh_sysadm_login` SELinux boolean, run the following command:

``` 
$ sudo setsebool -P ssh_sysadm_login off
```
