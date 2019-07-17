---
scapolite:
    class: rule
    version: '0.51'
id: sebool_git_system_use_cifs
id_namespace: org.ssgproject.RHEL-8
title: Disable the git\_system\_use\_cifs SELinux Boolean
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
        idref: ocil:ssg-sebool_git_system_use_cifs_ocil:questionnaire:1
        href: sebool_git_system_use_cifs.ocil.xml
---


## /rule

Disable the git\_system\_use\_cifs SELinux Boolean

## /description

By
default, the SELinux boolean `git_system_use_cifs` is disabled. If this
setting is enabled, it should be disabled. To disable the
`git_system_use_cifs` SELinux boolean, run the following command:

``` 
$ sudo setsebool -P git_system_use_cifs off
```
