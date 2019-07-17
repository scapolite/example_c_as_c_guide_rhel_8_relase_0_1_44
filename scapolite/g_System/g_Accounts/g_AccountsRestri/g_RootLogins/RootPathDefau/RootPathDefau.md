---
scapolite:
    class: rule
    version: '0.51'
id: root_path_default
id_namespace: org.ssgproject.RHEL-8
title: Root Path Must Be Vendor Default
rule: <see below>
rationale: <see below>
description: <see below>
applicability:
  - system: org.scapolite.xccdf.applicability
checks:
  - relative_id: '01'
    automations:
      - system: http://scap.nist.gov/schema/ocil/2
        idref: ocil:ssg-root_path_default_ocil:questionnaire:1
        href: root_path_default.ocil.xml
crossrefs:
  - system: https://www.cisecurity.org/wp-content/uploads/2017/03/Poster_Winter2016_CSCs.pdf
    idref: '18'
    relation: ''
  - system: http://www.isaca.org/COBIT/Pages/default.aspx
    idref: APO13.01
    relation: ''
  - system: http://www.isaca.org/COBIT/Pages/default.aspx
    idref: BAI03.01
    relation: ''
  - system: http://www.isaca.org/COBIT/Pages/default.aspx
    idref: BAI03.02
    relation: ''
  - system: http://www.isaca.org/COBIT/Pages/default.aspx
    idref: BAI03.03
    relation: ''
  - system: https://www.isa.org/templates/one-column.aspx?pageid=111294&productId=116731
    idref: 4.3.4.3.3
    relation: ''
  - system: https://www.iso.org/standard/54534.html
    idref: A.14.1.1
    relation: ''
  - system: https://www.iso.org/standard/54534.html
    idref: A.14.2.1
    relation: ''
  - system: https://www.iso.org/standard/54534.html
    idref: A.14.2.5
    relation: ''
  - system: https://www.iso.org/standard/54534.html
    idref: A.6.1.5
    relation: ''
  - system: http://nvlpubs.nist.gov/nistpubs/SpecialPublications/NIST.SP.800-53r4.pdf
    idref: SA-8
    relation: ''
  - system: https://nvlpubs.nist.gov/nistpubs/CSWP/NIST.CSWP.04162018.pdf
    idref: PR.IP-2
    relation: ''
---


## /rule

Root Path Must Be Vendor Default

## /rationale

The
root account\'s executable search path must be the vendor default, and
must contain only absolute paths.

## /description

Assuming
root shell is bash, edit the following files:

``` 
~/.profile
```

``` 
~/.bashrc
```

Change any `PATH` variables to the vendor default for root and remove
any empty `PATH` entries or references to relative paths.
