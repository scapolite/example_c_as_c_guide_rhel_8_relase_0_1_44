---
scapolite:
    class: rule
    version: '0.51'
id: sebool_auditadm_exec_content
id_namespace: org.ssgproject.RHEL-8
title: Enable the auditadm\_exec\_content SELinux Boolean
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
        idref: ocil:ssg-sebool_auditadm_exec_content_ocil:questionnaire:1
        href: sebool_auditadm_exec_content.ocil.xml
crossrefs:
  - system: http://nvlpubs.nist.gov/nistpubs/SpecialPublications/NIST.SP.800-171.pdf
    idref: 80424-5
    relation: ''
---


## /rule

Enable the auditadm\_exec\_content SELinux Boolean

## /description

By
default, the SELinux boolean `auditadm_exec_content` is enabled. If this
setting is disabled, it should be enabled. To enable the
`auditadm_exec_content` SELinux boolean, run the following command:

``` 
$ sudo setsebool -P auditadm_exec_content on
```
