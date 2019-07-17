---
scapolite:
    class: rule
    version: '0.51'
id: cups_disable_browsing
id_namespace: org.ssgproject.RHEL-8
title: Disable Printer Browsing Entirely if Possible
rule: <see below>
rationale: <see below>
description: <see below>
applicability:
  - system: org.scapolite.xccdf.applicability
checks:
  - relative_id: '01'
    automations:
      - system: http://oval.mitre.org/XMLSchema/oval-definitions-5
        idref: oval:ssg-cups_disable_browsing:def:1
        href: cups_disable_browsing.oval.xml
  - relative_id: '02'
    automations:
      - system: http://scap.nist.gov/schema/ocil/2
        idref: ocil:ssg-cups_disable_browsing_ocil:questionnaire:1
        href: cups_disable_browsing.ocil.xml
crossrefs:
  - system: https://www.cisecurity.org/wp-content/uploads/2017/03/Poster_Winter2016_CSCs.pdf
    idref: '11'
    relation: ''
  - system: https://www.cisecurity.org/wp-content/uploads/2017/03/Poster_Winter2016_CSCs.pdf
    idref: '14'
    relation: ''
  - system: https://www.cisecurity.org/wp-content/uploads/2017/03/Poster_Winter2016_CSCs.pdf
    idref: '3'
    relation: ''
  - system: https://www.cisecurity.org/wp-content/uploads/2017/03/Poster_Winter2016_CSCs.pdf
    idref: '9'
    relation: ''
  - system: http://www.isaca.org/COBIT/Pages/default.aspx
    idref: BAI10.01
    relation: ''
  - system: http://www.isaca.org/COBIT/Pages/default.aspx
    idref: BAI10.02
    relation: ''
  - system: http://www.isaca.org/COBIT/Pages/default.aspx
    idref: BAI10.03
    relation: ''
  - system: http://www.isaca.org/COBIT/Pages/default.aspx
    idref: BAI10.05
    relation: ''
  - system: http://www.isaca.org/COBIT/Pages/default.aspx
    idref: DSS05.02
    relation: ''
  - system: http://www.isaca.org/COBIT/Pages/default.aspx
    idref: DSS05.05
    relation: ''
  - system: http://www.isaca.org/COBIT/Pages/default.aspx
    idref: DSS06.06
    relation: ''
  - system: https://www.isa.org/templates/one-column.aspx?pageid=111294&productId=116731
    idref: 4.3.3.5.1
    relation: ''
  - system: https://www.isa.org/templates/one-column.aspx?pageid=111294&productId=116731
    idref: 4.3.3.5.2
    relation: ''
  - system: https://www.isa.org/templates/one-column.aspx?pageid=111294&productId=116731
    idref: 4.3.3.5.3
    relation: ''
  - system: https://www.isa.org/templates/one-column.aspx?pageid=111294&productId=116731
    idref: 4.3.3.5.4
    relation: ''
  - system: https://www.isa.org/templates/one-column.aspx?pageid=111294&productId=116731
    idref: 4.3.3.5.5
    relation: ''
  - system: https://www.isa.org/templates/one-column.aspx?pageid=111294&productId=116731
    idref: 4.3.3.5.6
    relation: ''
  - system: https://www.isa.org/templates/one-column.aspx?pageid=111294&productId=116731
    idref: 4.3.3.5.7
    relation: ''
  - system: https://www.isa.org/templates/one-column.aspx?pageid=111294&productId=116731
    idref: 4.3.3.5.8
    relation: ''
  - system: https://www.isa.org/templates/one-column.aspx?pageid=111294&productId=116731
    idref: 4.3.3.6.1
    relation: ''
  - system: https://www.isa.org/templates/one-column.aspx?pageid=111294&productId=116731
    idref: 4.3.3.6.2
    relation: ''
  - system: https://www.isa.org/templates/one-column.aspx?pageid=111294&productId=116731
    idref: 4.3.3.6.3
    relation: ''
  - system: https://www.isa.org/templates/one-column.aspx?pageid=111294&productId=116731
    idref: 4.3.3.6.4
    relation: ''
  - system: https://www.isa.org/templates/one-column.aspx?pageid=111294&productId=116731
    idref: 4.3.3.6.5
    relation: ''
  - system: https://www.isa.org/templates/one-column.aspx?pageid=111294&productId=116731
    idref: 4.3.3.6.6
    relation: ''
  - system: https://www.isa.org/templates/one-column.aspx?pageid=111294&productId=116731
    idref: 4.3.3.6.7
    relation: ''
  - system: https://www.isa.org/templates/one-column.aspx?pageid=111294&productId=116731
    idref: 4.3.3.6.8
    relation: ''
  - system: https://www.isa.org/templates/one-column.aspx?pageid=111294&productId=116731
    idref: 4.3.3.6.9
    relation: ''
  - system: https://www.isa.org/templates/one-column.aspx?pageid=111294&productId=116731
    idref: 4.3.3.7.1
    relation: ''
  - system: https://www.isa.org/templates/one-column.aspx?pageid=111294&productId=116731
    idref: 4.3.3.7.2
    relation: ''
  - system: https://www.isa.org/templates/one-column.aspx?pageid=111294&productId=116731
    idref: 4.3.3.7.3
    relation: ''
  - system: https://www.isa.org/templates/one-column.aspx?pageid=111294&productId=116731
    idref: 4.3.3.7.4
    relation: ''
  - system: https://www.isa.org/templates/one-column.aspx?pageid=111294&productId=116731
    idref: 4.3.4.3.2
    relation: ''
  - system: https://www.isa.org/templates/one-column.aspx?pageid=111294&productId=116731
    idref: 4.3.4.3.3
    relation: ''
  - system: https://www.isa.org/templates/one-column.aspx?pageid=111294&productId=116785
    idref: SR 1.1
    relation: ''
  - system: https://www.isa.org/templates/one-column.aspx?pageid=111294&productId=116785
    idref: SR 1.10
    relation: ''
  - system: https://www.isa.org/templates/one-column.aspx?pageid=111294&productId=116785
    idref: SR 1.11
    relation: ''
  - system: https://www.isa.org/templates/one-column.aspx?pageid=111294&productId=116785
    idref: SR 1.12
    relation: ''
  - system: https://www.isa.org/templates/one-column.aspx?pageid=111294&productId=116785
    idref: SR 1.13
    relation: ''
  - system: https://www.isa.org/templates/one-column.aspx?pageid=111294&productId=116785
    idref: SR 1.2
    relation: ''
  - system: https://www.isa.org/templates/one-column.aspx?pageid=111294&productId=116785
    idref: SR 1.3
    relation: ''
  - system: https://www.isa.org/templates/one-column.aspx?pageid=111294&productId=116785
    idref: SR 1.4
    relation: ''
  - system: https://www.isa.org/templates/one-column.aspx?pageid=111294&productId=116785
    idref: SR 1.5
    relation: ''
  - system: https://www.isa.org/templates/one-column.aspx?pageid=111294&productId=116785
    idref: SR 1.6
    relation: ''
  - system: https://www.isa.org/templates/one-column.aspx?pageid=111294&productId=116785
    idref: SR 1.7
    relation: ''
  - system: https://www.isa.org/templates/one-column.aspx?pageid=111294&productId=116785
    idref: SR 1.8
    relation: ''
  - system: https://www.isa.org/templates/one-column.aspx?pageid=111294&productId=116785
    idref: SR 1.9
    relation: ''
  - system: https://www.isa.org/templates/one-column.aspx?pageid=111294&productId=116785
    idref: SR 2.1
    relation: ''
  - system: https://www.isa.org/templates/one-column.aspx?pageid=111294&productId=116785
    idref: SR 2.2
    relation: ''
  - system: https://www.isa.org/templates/one-column.aspx?pageid=111294&productId=116785
    idref: SR 2.3
    relation: ''
  - system: https://www.isa.org/templates/one-column.aspx?pageid=111294&productId=116785
    idref: SR 2.4
    relation: ''
  - system: https://www.isa.org/templates/one-column.aspx?pageid=111294&productId=116785
    idref: SR 2.5
    relation: ''
  - system: https://www.isa.org/templates/one-column.aspx?pageid=111294&productId=116785
    idref: SR 2.6
    relation: ''
  - system: https://www.isa.org/templates/one-column.aspx?pageid=111294&productId=116785
    idref: SR 2.7
    relation: ''
  - system: https://www.isa.org/templates/one-column.aspx?pageid=111294&productId=116785
    idref: SR 7.6
    relation: ''
  - system: https://www.iso.org/standard/54534.html
    idref: A.12.1.2
    relation: ''
  - system: https://www.iso.org/standard/54534.html
    idref: A.12.5.1
    relation: ''
  - system: https://www.iso.org/standard/54534.html
    idref: A.12.6.2
    relation: ''
  - system: https://www.iso.org/standard/54534.html
    idref: A.14.2.2
    relation: ''
  - system: https://www.iso.org/standard/54534.html
    idref: A.14.2.3
    relation: ''
  - system: https://www.iso.org/standard/54534.html
    idref: A.14.2.4
    relation: ''
  - system: https://www.iso.org/standard/54534.html
    idref: A.9.1.2
    relation: ''
  - system: http://nvlpubs.nist.gov/nistpubs/SpecialPublications/NIST.SP.800-53r4.pdf
    idref: CM-7
    relation: ''
  - system: https://nvlpubs.nist.gov/nistpubs/CSWP/NIST.CSWP.04162018.pdf
    idref: PR.IP-1
    relation: ''
  - system: https://nvlpubs.nist.gov/nistpubs/CSWP/NIST.CSWP.04162018.pdf
    idref: PR.PT-3
    relation: ''
---


## /rule

Disable Printer Browsing Entirely if Possible

## /rationale

The
CUPS print service can be configured to broadcast a list of available
printers to the network. Other systems on the network, also running the
CUPS print service, can be configured to listen to these broadcasts and
add and configure these printers for immediate use. By disabling this
browsing capability, the system will no longer generate or receive such
broadcasts.

## /description

By
default, CUPS listens on the network for printer list broadcasts on UDP
port 631. This functionality is called printer browsing. To disable
printer browsing entirely, edit the CUPS configuration file, located at
`/etc/cups/cupsd.conf`, to include the following:

``` 
Browsing Off
BrowseAllow none
```
