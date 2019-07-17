---
scapolite:
    class: rule
    version: '0.51'
id: dconf_use_text_backend
id_namespace: org.ssgproject.RHEL-8
title: Force dconf to use the textfiles instead of a binary DB
rule: <see below>
rationale: <see below>
description: <see below>
applicability:
  - system: org.scapolite.xccdf.applicability
    severity: high
  - system: https://scap.nist.gov/schema/cpe/2.2
    cpes:
      - cpe:/a:machine
implementations:
  - relative_id: '01'
    title: Automated fix
    automations:
      - system: urn:xccdf:fix:script:sh
        href: dconf_use_text_backend.sh
  - relative_id: '02'
    title: Automated fix
    automations:
      - system: urn:xccdf:fix:script:ansible
        href: dconf_use_text_backend.ansible
        complexity: low
        disruption: medium
checks:
  - relative_id: '01'
    automations:
      - system: http://oval.mitre.org/XMLSchema/oval-definitions-5
        idref: oval:ssg-dconf_use_text_backend:def:1
        href: dconf_use_text_backend.oval.xml
  - relative_id: '02'
    automations:
      - system: http://scap.nist.gov/schema/ocil/2
        idref: ocil:ssg-dconf_use_text_backend_ocil:questionnaire:1
        href: dconf_use_text_backend.ocil.xml
crossrefs:
  - system: https://nvd.nist.gov/cce/index.cfm
    idref: CCE-80782-6
    relation: ''
  - system: https://nvd.nist.gov/cce/index.cfm
    idref: CCE-80782-6
    relation: ''
---


## /rule

Force dconf to use the textfiles instead of a binary DB

## /rationale

Unlike
text config files, the binary database is impossible to check by OVAL.
Therefore, in order to evaluate dconf configuration, both have to be
true at the same time - configuration files have to be compliant, and
dconf has to be forced to use them as the primary settings storage.

## /description

By
default, DConf uses a binary database as a data backend. The database is
compiled from config files by the

``` 
dconf update
```

command. dconf can be configured to look into those text files directly
by inserting the

``` 
service-db:keyfile/user
```

directive at the beginning of the

``` 
/etc/dconf/profile/user
```

file.
