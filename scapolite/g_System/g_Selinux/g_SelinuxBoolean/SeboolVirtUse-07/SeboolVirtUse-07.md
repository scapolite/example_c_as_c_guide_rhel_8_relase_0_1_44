---
scapolite:
    class: rule
    version: '0.51'
id: sebool_virt_use_usb
id_namespace: org.ssgproject.RHEL-8
title: Disable the virt\_use\_usb SELinux Boolean
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
        idref: ocil:ssg-sebool_virt_use_usb_ocil:questionnaire:1
        href: sebool_virt_use_usb.ocil.xml
---


## /rule

Disable the virt\_use\_usb SELinux Boolean

## /description

By
default, the SELinux boolean `virt_use_usb` is enabled. This setting
should be disabled. To disable the `virt_use_usb` SELinux boolean, run
the following command:

``` 
$ sudo setsebool -P virt_use_usb off
```
