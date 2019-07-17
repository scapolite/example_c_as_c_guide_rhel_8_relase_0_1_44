---
scapolite:
    class: rule
    version: '0.51'
id: sebool_gssd_read_tmp
id_namespace: org.ssgproject.RHEL-8
title: Enable the gssd\_read\_tmp SELinux Boolean
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
        idref: ocil:ssg-sebool_gssd_read_tmp_ocil:questionnaire:1
        href: sebool_gssd_read_tmp.ocil.xml
---


## /rule

Enable the gssd\_read\_tmp SELinux Boolean

## /description

By
default, the SELinux boolean `gssd_read_tmp` is enabled. This setting
allows `gssd` processes to access Kerberos to read TGTs in the temp
directory. If this setting is disabled, it should be enabled. To enable
the `gssd_read_tmp` SELinux boolean, run the following command:

``` 
$ sudo setsebool -P gssd_read_tmp on
```
