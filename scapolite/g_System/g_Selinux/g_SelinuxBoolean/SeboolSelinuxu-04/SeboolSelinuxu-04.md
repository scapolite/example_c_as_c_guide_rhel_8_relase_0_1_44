---
scapolite:
    class: rule
    version: '0.51'
id: sebool_selinuxuser_udp_server
id_namespace: org.ssgproject.RHEL-8
title: Disable the selinuxuser\_udp\_server SELinux Boolean
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
        idref: ocil:ssg-sebool_selinuxuser_udp_server_ocil:questionnaire:1
        href: sebool_selinuxuser_udp_server.ocil.xml
---


## /rule

Disable the selinuxuser\_udp\_server SELinux Boolean

## /description

By
default, the SELinux boolean `selinuxuser_udp_server` is disabled. If
this setting is enabled, it should be disabled. To disable the
`selinuxuser_udp_server` SELinux boolean, run the following command:

``` 
$ sudo setsebool -P selinuxuser_udp_server off
```
