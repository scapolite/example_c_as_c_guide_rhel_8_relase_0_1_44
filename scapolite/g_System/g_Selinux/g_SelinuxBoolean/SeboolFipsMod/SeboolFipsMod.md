---
scapolite:
    class: rule
    version: '0.51'
id: sebool_fips_mode
id_namespace: org.ssgproject.RHEL-8
title: Enable the fips\_mode SELinux Boolean
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
        idref: ocil:ssg-sebool_fips_mode_ocil:questionnaire:1
        href: sebool_fips_mode.ocil.xml
crossrefs:
  - system: https://www.cisecurity.org/wp-content/uploads/2017/03/Poster_Winter2016_CSCs.pdf
    idref: '13'
    relation: ''
  - system: http://www.isaca.org/COBIT/Pages/default.aspx
    idref: APO01.06
    relation: ''
  - system: http://www.isaca.org/COBIT/Pages/default.aspx
    idref: DSS05.04
    relation: ''
  - system: http://www.isaca.org/COBIT/Pages/default.aspx
    idref: DSS05.07
    relation: ''
  - system: http://www.isaca.org/COBIT/Pages/default.aspx
    idref: DSS06.02
    relation: ''
  - system: http://nvlpubs.nist.gov/nistpubs/SpecialPublications/NIST.SP.800-171.pdf
    idref: 3.13.11
    relation: ''
  - system: https://www.isa.org/templates/one-column.aspx?pageid=111294&productId=116785
    idref: SR 5.2
    relation: ''
  - system: https://www.iso.org/standard/54534.html
    idref: A.10.1.1
    relation: ''
  - system: https://www.iso.org/standard/54534.html
    idref: A.11.1.4
    relation: ''
  - system: https://www.iso.org/standard/54534.html
    idref: A.11.1.5
    relation: ''
  - system: https://www.iso.org/standard/54534.html
    idref: A.11.2.1
    relation: ''
  - system: https://www.iso.org/standard/54534.html
    idref: A.13.1.1
    relation: ''
  - system: https://www.iso.org/standard/54534.html
    idref: A.13.1.3
    relation: ''
  - system: https://www.iso.org/standard/54534.html
    idref: A.13.2.1
    relation: ''
  - system: https://www.iso.org/standard/54534.html
    idref: A.13.2.3
    relation: ''
  - system: https://www.iso.org/standard/54534.html
    idref: A.13.2.4
    relation: ''
  - system: https://www.iso.org/standard/54534.html
    idref: A.14.1.2
    relation: ''
  - system: https://www.iso.org/standard/54534.html
    idref: A.14.1.3
    relation: ''
  - system: https://www.iso.org/standard/54534.html
    idref: A.6.1.2
    relation: ''
  - system: https://www.iso.org/standard/54534.html
    idref: A.7.1.1
    relation: ''
  - system: https://www.iso.org/standard/54534.html
    idref: A.7.1.2
    relation: ''
  - system: https://www.iso.org/standard/54534.html
    idref: A.7.3.1
    relation: ''
  - system: https://www.iso.org/standard/54534.html
    idref: A.8.2.2
    relation: ''
  - system: https://www.iso.org/standard/54534.html
    idref: A.8.2.3
    relation: ''
  - system: https://www.iso.org/standard/54534.html
    idref: A.9.1.1
    relation: ''
  - system: https://www.iso.org/standard/54534.html
    idref: A.9.1.2
    relation: ''
  - system: https://www.iso.org/standard/54534.html
    idref: A.9.2.3
    relation: ''
  - system: https://www.iso.org/standard/54534.html
    idref: A.9.4.1
    relation: ''
  - system: https://www.iso.org/standard/54534.html
    idref: A.9.4.4
    relation: ''
  - system: https://www.iso.org/standard/54534.html
    idref: A.9.4.5
    relation: ''
  - system: http://nvlpubs.nist.gov/nistpubs/SpecialPublications/NIST.SP.800-53r4.pdf
    idref: SC-13
    relation: ''
  - system: http://nvlpubs.nist.gov/nistpubs/SpecialPublications/NIST.SP.800-53r4.pdf
    idref: SC-39
    relation: ''
  - system: https://nvlpubs.nist.gov/nistpubs/CSWP/NIST.CSWP.04162018.pdf
    idref: PR.DS-5
    relation: ''
---


## /rule

Enable the fips\_mode SELinux Boolean

## /description

By
default, the SELinux boolean `fips_mode` is enabled. This allows all
SELinux domains to execute in `fips_mode`. If this setting is disabled,
it should be enabled. To enable the `fips_mode` SELinux boolean, run the
following command:

``` 
$ sudo setsebool -P fips_mode on
```
