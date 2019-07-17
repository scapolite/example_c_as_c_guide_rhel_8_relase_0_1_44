---
scapolite:
    class: rule
    version: '0.51'
id: dconf_db_up_to_date
id_namespace: org.ssgproject.RHEL-8
title: |
    Make sure that the dconf databases are up-to-date with regards to
    respective keyfiles
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
        href: dconf_db_up_to_date.sh
checks:
  - relative_id: '01'
    automations:
      - system: http://oval.mitre.org/XMLSchema/oval-definitions-5
        idref: oval:ssg-dconf_db_up_to_date:def:1
        href: dconf_db_up_to_date.oval.xml
  - relative_id: '02'
    automations:
      - system: http://scap.nist.gov/schema/ocil/2
        idref: ocil:ssg-dconf_db_up_to_date_ocil:questionnaire:1
        href: dconf_db_up_to_date.ocil.xml
crossrefs:
  - system: https://nvd.nist.gov/cce/index.cfm
    idref: CCE-81003-6
    relation: ''
  - system: https://nvd.nist.gov/cce/index.cfm
    idref: CCE-81003-6
    relation: ''
---


## /rule

Make sure that the dconf databases are up-to-date with regards to
respective keyfiles

## /rationale

Unlike
text-based keyfiles, the binary database is impossible to check by OVAL.
Therefore, in order to evaluate dconf configuration, both have to be
true at the same time - configuration files have to be compliant, and
the database needs to be more recent than those keyfiles, which gives
confidence that it reflects them.

## /description

By
default, DConf uses a binary database as a data backend. The
system-level database is compiled from keyfiles in the /etc/dconf/db/
directory by the

``` 
dconf update
```

command.
