---
scapolite:
    class: rule
    version: '0.51'
id: sebool_git_session_users
id_namespace: org.ssgproject.RHEL-8
title: Disable the git\_session\_users SELinux Boolean
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
        idref: ocil:ssg-sebool_git_session_users_ocil:questionnaire:1
        href: sebool_git_session_users.ocil.xml
---


## /rule

Disable the git\_session\_users SELinux Boolean

## /description

By
default, the SELinux boolean `git_session_users` is disabled. If this
setting is enabled, it should be disabled. To disable the
`git_session_users` SELinux boolean, run the following command:

``` 
$ sudo setsebool -P git_session_users off
```
