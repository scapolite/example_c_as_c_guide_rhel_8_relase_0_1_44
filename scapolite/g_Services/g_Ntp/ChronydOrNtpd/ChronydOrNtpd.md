---
scapolite:
    class: rule
    version: '0.51'
id: chronyd_or_ntpd_specify_remote_server
id_namespace: org.ssgproject.RHEL-8
title: Specify a Remote NTP Server
rule: <see below>
rationale: <see below>
description: <see below>
applicability:
  - system: org.scapolite.xccdf.applicability
    severity: medium
  - system: https://scap.nist.gov/schema/cpe/2.2
    cpes:
      - cpe:/a:machine
implementations:
  - relative_id: '01'
    title: Automated fix
    automations:
      - system: urn:xccdf:fix:script:sh
        href: chronyd_or_ntpd_specify_remote_server.sh
checks:
  - relative_id: '01'
    automations:
      - system: http://scap.nist.gov/schema/ocil/2
        idref: ocil:ssg-chronyd_or_ntpd_specify_remote_server_ocil:questionnaire:1
        href: chronyd_or_ntpd_specify_remote_server.ocil.xml
crossrefs:
  - system: https://nvd.nist.gov/cce/index.cfm
    idref: CCE-80765-1
    relation: ''
  - system: org.scapolite.unknown
    idref: '3.6'
    relation: ''
  - system: https://www.cisecurity.org/wp-content/uploads/2017/03/Poster_Winter2016_CSCs.pdf
    idref: '1'
    relation: ''
  - system: https://www.cisecurity.org/wp-content/uploads/2017/03/Poster_Winter2016_CSCs.pdf
    idref: '14'
    relation: ''
  - system: https://www.cisecurity.org/wp-content/uploads/2017/03/Poster_Winter2016_CSCs.pdf
    idref: '15'
    relation: ''
  - system: https://www.cisecurity.org/wp-content/uploads/2017/03/Poster_Winter2016_CSCs.pdf
    idref: '16'
    relation: ''
  - system: https://www.cisecurity.org/wp-content/uploads/2017/03/Poster_Winter2016_CSCs.pdf
    idref: '3'
    relation: ''
  - system: https://www.cisecurity.org/wp-content/uploads/2017/03/Poster_Winter2016_CSCs.pdf
    idref: '5'
    relation: ''
  - system: https://www.cisecurity.org/wp-content/uploads/2017/03/Poster_Winter2016_CSCs.pdf
    idref: '6'
    relation: ''
  - system: http://www.isaca.org/COBIT/Pages/default.aspx
    idref: APO11.04
    relation: ''
  - system: http://www.isaca.org/COBIT/Pages/default.aspx
    idref: BAI03.05
    relation: ''
  - system: http://www.isaca.org/COBIT/Pages/default.aspx
    idref: DSS05.04
    relation: ''
  - system: http://www.isaca.org/COBIT/Pages/default.aspx
    idref: DSS05.07
    relation: ''
  - system: http://www.isaca.org/COBIT/Pages/default.aspx
    idref: MEA02.01
    relation: ''
  - system: http://nvlpubs.nist.gov/nistpubs/SpecialPublications/NIST.SP.800-171.pdf
    idref: 3.3.7
    relation: ''
  - system: http://iase.disa.mil/stigs/cci/Pages/index.aspx
    idref: CCI-000160
    relation: ''
  - system: http://iase.disa.mil/stigs/cci/Pages/index.aspx
    idref: CCI-001891
    relation: ''
  - system: https://www.isa.org/templates/one-column.aspx?pageid=111294&productId=116731
    idref: 4.3.3.3.9
    relation: ''
  - system: https://www.isa.org/templates/one-column.aspx?pageid=111294&productId=116731
    idref: 4.3.3.5.8
    relation: ''
  - system: https://www.isa.org/templates/one-column.aspx?pageid=111294&productId=116731
    idref: 4.3.4.4.7
    relation: ''
  - system: https://www.isa.org/templates/one-column.aspx?pageid=111294&productId=116731
    idref: 4.4.2.1
    relation: ''
  - system: https://www.isa.org/templates/one-column.aspx?pageid=111294&productId=116731
    idref: 4.4.2.2
    relation: ''
  - system: https://www.isa.org/templates/one-column.aspx?pageid=111294&productId=116731
    idref: 4.4.2.4
    relation: ''
  - system: https://www.isa.org/templates/one-column.aspx?pageid=111294&productId=116785
    idref: SR 2.10
    relation: ''
  - system: https://www.isa.org/templates/one-column.aspx?pageid=111294&productId=116785
    idref: SR 2.11
    relation: ''
  - system: https://www.isa.org/templates/one-column.aspx?pageid=111294&productId=116785
    idref: SR 2.12
    relation: ''
  - system: https://www.isa.org/templates/one-column.aspx?pageid=111294&productId=116785
    idref: SR 2.8
    relation: ''
  - system: https://www.isa.org/templates/one-column.aspx?pageid=111294&productId=116785
    idref: SR 2.9
    relation: ''
  - system: https://www.iso.org/standard/54534.html
    idref: A.12.4.1
    relation: ''
  - system: https://www.iso.org/standard/54534.html
    idref: A.12.4.2
    relation: ''
  - system: https://www.iso.org/standard/54534.html
    idref: A.12.4.3
    relation: ''
  - system: https://www.iso.org/standard/54534.html
    idref: A.12.4.4
    relation: ''
  - system: https://www.iso.org/standard/54534.html
    idref: A.12.7.1
    relation: ''
  - system: http://nvlpubs.nist.gov/nistpubs/SpecialPublications/NIST.SP.800-53r4.pdf
    idref: AU-8(1)
    relation: ''
  - system: http://nvlpubs.nist.gov/nistpubs/SpecialPublications/NIST.SP.800-53r4.pdf
    idref: AU-8(1)(a)
    relation: ''
  - system: https://nvlpubs.nist.gov/nistpubs/CSWP/NIST.CSWP.04162018.pdf
    idref: PR.PT-1
    relation: ''
  - system: https://www.pcisecuritystandards.org/documents/PCI_DSS_v3-1.pdf
    idref: Req-10.4.1
    relation: ''
  - system: https://www.pcisecuritystandards.org/documents/PCI_DSS_v3-1.pdf
    idref: Req-10.4.3
    relation: ''
  - system: org.scapolite.unknown
    idref: SRG-OS-000355-VMM-001330
    relation: ''
  - system: https://nvd.nist.gov/cce/index.cfm
    idref: CCE-80765-1
    relation: ''
---


## /rule

Specify a Remote NTP Server

## /rationale

Synchronizing
with an NTP server makes it possible to collate system logs from
multiple sources or correlate computer events with real time events.

## /description

Depending
on specific functional requirements of a concrete production
environment, the Red Hat Enterprise Linux 8 system can be configured to
utilize the services of the `chronyd` NTP daemon (the default), or
services of the `ntpd` NTP daemon. Refer to
<https://access.redhat.com/documentation/en-US/Red_Hat_Enterprise_Linux/7/html/System_Administrators_Guide/ch-Configuring_NTP_Using_the_chrony_Suite.html>
for more detailed comparison of the features of both of the choices, and
for further guidance how to choose between the two NTP daemons.  
To specify a remote NTP server for time synchronization, perform the
following:

-   if the system is configured to use the `chronyd` as the NTP daemon
    (the default), edit the file `/etc/chrony.conf` as follows,
-   if the system is configured to use the `ntpd` as the NTP daemon,
    edit the file `/etc/ntp.conf` as documented below.

Add or correct the following lines, substituting the IP or hostname of a
remote NTP server for *ntpserver*:

``` 
server ntpserver
```

This instructs the NTP software to contact that remote server to obtain
time data.
