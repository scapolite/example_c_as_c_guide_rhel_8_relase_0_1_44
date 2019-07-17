---
scapolite:
    class: rule
    version: '0.51'
id: sebool_selinuxuser_ping
id_namespace: org.ssgproject.RHEL-8
title: Enable the selinuxuser\_ping SELinux Boolean
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
        idref: ocil:ssg-sebool_selinuxuser_ping_ocil:questionnaire:1
        href: sebool_selinuxuser_ping.ocil.xml
---


## /rule

Enable the selinuxuser\_ping SELinux Boolean

## /description

By
default, the SELinux boolean `selinuxuser_ping` is enabled. If this
setting is disabled, it should be enabled as it allows confined users to
use ping and traceroute which is helpful for network troubleshooting. To
enable the `selinuxuser_ping` SELinux boolean, run the following
command:

``` 
$ sudo setsebool -P selinuxuser_ping on
```
