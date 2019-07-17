---
scapolite:
    class: rule
    version: '0.51'
id: sebool_authlogin_yubikey
id_namespace: org.ssgproject.RHEL-8
title: Disable the authlogin\_yubikey SELinux Boolean
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
        idref: ocil:ssg-sebool_authlogin_yubikey_ocil:questionnaire:1
        href: sebool_authlogin_yubikey.ocil.xml
crossrefs:
  - system: http://nvlpubs.nist.gov/nistpubs/SpecialPublications/NIST.SP.800-171.pdf
    idref: 3.7.2
    relation: ''
---


## /rule

Disable the authlogin\_yubikey SELinux Boolean

## /description

By
default, the SELinux boolean `authlogin_yubikey` is disabled. If this
setting is enabled, it should be disabled. To disable the
`authlogin_yubikey` SELinux boolean, run the following command:

``` 
$ sudo setsebool -P authlogin_yubikey off
```
