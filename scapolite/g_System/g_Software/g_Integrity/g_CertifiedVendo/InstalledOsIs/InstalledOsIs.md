---
scapolite:
    class: rule
    version: '0.51'
id: installed_OS_is_vendor_supported
id_namespace: org.ssgproject.RHEL-8
title: The Installed Operating System Is Vendor Supported
rule: <see below>
rationale: <see below>
description: <see below>
applicability:
  - system: org.scapolite.xccdf.applicability
    severity: high
checks:
  - relative_id: '01'
    automations:
      - system: http://oval.mitre.org/XMLSchema/oval-definitions-5
        idref: oval:ssg-installed_OS_is_vendor_supported:def:1
        href: installed_OS_is_vendor_supported.oval.xml
  - relative_id: '02'
    automations:
      - system: http://scap.nist.gov/schema/ocil/2
        idref: ocil:ssg-installed_OS_is_vendor_supported_ocil:questionnaire:1
        href: installed_OS_is_vendor_supported.ocil.xml
crossrefs:
  - system: https://nvd.nist.gov/cce/index.cfm
    idref: CCE-80947-5
    relation: ''
  - system: https://www.cisecurity.org/wp-content/uploads/2017/03/Poster_Winter2016_CSCs.pdf
    idref: '18'
    relation: ''
  - system: https://www.cisecurity.org/wp-content/uploads/2017/03/Poster_Winter2016_CSCs.pdf
    idref: '20'
    relation: ''
  - system: https://www.cisecurity.org/wp-content/uploads/2017/03/Poster_Winter2016_CSCs.pdf
    idref: '4'
    relation: ''
  - system: http://www.isaca.org/COBIT/Pages/default.aspx
    idref: APO12.01
    relation: ''
  - system: http://www.isaca.org/COBIT/Pages/default.aspx
    idref: APO12.02
    relation: ''
  - system: http://www.isaca.org/COBIT/Pages/default.aspx
    idref: APO12.03
    relation: ''
  - system: http://www.isaca.org/COBIT/Pages/default.aspx
    idref: APO12.04
    relation: ''
  - system: http://www.isaca.org/COBIT/Pages/default.aspx
    idref: BAI03.10
    relation: ''
  - system: http://www.isaca.org/COBIT/Pages/default.aspx
    idref: DSS05.01
    relation: ''
  - system: http://www.isaca.org/COBIT/Pages/default.aspx
    idref: DSS05.02
    relation: ''
  - system: http://iase.disa.mil/stigs/cci/Pages/index.aspx
    idref: CCI-000366
    relation: ''
  - system: https://www.isa.org/templates/one-column.aspx?pageid=111294&productId=116731
    idref: 4.2.3
    relation: ''
  - system: https://www.isa.org/templates/one-column.aspx?pageid=111294&productId=116731
    idref: 4.2.3.12
    relation: ''
  - system: https://www.isa.org/templates/one-column.aspx?pageid=111294&productId=116731
    idref: 4.2.3.7
    relation: ''
  - system: https://www.isa.org/templates/one-column.aspx?pageid=111294&productId=116731
    idref: 4.2.3.9
    relation: ''
  - system: https://www.iso.org/standard/54534.html
    idref: A.12.6.1
    relation: ''
  - system: https://www.iso.org/standard/54534.html
    idref: A.14.2.3
    relation: ''
  - system: https://www.iso.org/standard/54534.html
    idref: A.16.1.3
    relation: ''
  - system: https://www.iso.org/standard/54534.html
    idref: A.18.2.2
    relation: ''
  - system: https://www.iso.org/standard/54534.html
    idref: A.18.2.3
    relation: ''
  - system: http://nvlpubs.nist.gov/nistpubs/SpecialPublications/NIST.SP.800-53r4.pdf
    idref: SI-2(c)
    relation: ''
  - system: https://nvlpubs.nist.gov/nistpubs/CSWP/NIST.CSWP.04162018.pdf
    idref: ID.RA-1
    relation: ''
  - system: https://nvlpubs.nist.gov/nistpubs/CSWP/NIST.CSWP.04162018.pdf
    idref: PR.IP-12
    relation: ''
  - system: http://iase.disa.mil/stigs/os/general/Pages/index.aspx
    idref: SRG-OS-000480-GPOS-00227
    relation: ''
  - system: https://nvd.nist.gov/cce/index.cfm
    idref: CCE-80947-5
    relation: ''
---


## /rule

The Installed Operating System Is Vendor Supported

## /rationale

An
operating system is considered \"supported\" if the vendor continues to
provide security patches for the product. With an unsupported release,
it will not be possible to resolve any security issue discovered in the
system software.

## /description

The
installed operating system must be maintained by a vendor. Red Hat
Enterprise Linux is supported by Red Hat, Inc. As the Red Hat Enterprise
Linux vendor, Red Hat, Inc. is responsible for providing security
patches.
