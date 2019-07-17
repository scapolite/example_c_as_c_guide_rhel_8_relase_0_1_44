---
scapolite:
    class: rule
    version: '0.51'
id: ensure_gpgcheck_local_packages
id_namespace: org.ssgproject.RHEL-8
title: Ensure gpgcheck Enabled for Local Packages
rule: <see below>
rationale: <see below>
description: <see below>
applicability:
  - system: org.scapolite.xccdf.applicability
    severity: high
  - system: https://scap.nist.gov/schema/cpe/2.2
    cpes:
      - cpe:/a:yum
implementations:
  - relative_id: '01'
    title: Automated fix
    automations:
      - system: urn:xccdf:fix:script:sh
        href: ensure_gpgcheck_local_packages.sh
  - relative_id: '02'
    title: Automated fix
    automations:
      - system: urn:xccdf:fix:script:ansible
        href: ensure_gpgcheck_local_packages.ansible
        complexity: low
        disruption: medium
checks:
  - relative_id: '01'
    automations:
      - system: http://oval.mitre.org/XMLSchema/oval-definitions-5
        idref: oval:ssg-ensure_gpgcheck_local_packages:def:1
        href: ensure_gpgcheck_local_packages.oval.xml
  - relative_id: '02'
    automations:
      - system: http://scap.nist.gov/schema/ocil/2
        idref: ocil:ssg-ensure_gpgcheck_local_packages_ocil:questionnaire:1
        href: ensure_gpgcheck_local_packages.ocil.xml
crossrefs:
  - system: https://nvd.nist.gov/cce/index.cfm
    idref: CCE-80791-7
    relation: ''
  - system: https://www.cisecurity.org/wp-content/uploads/2017/03/Poster_Winter2016_CSCs.pdf
    idref: '11'
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
  - system: http://nvlpubs.nist.gov/nistpubs/SpecialPublications/NIST.SP.800-171.pdf
    idref: 3.4.8
    relation: ''
  - system: http://iase.disa.mil/stigs/cci/Pages/index.aspx
    idref: CCI-001749
    relation: ''
  - system: https://www.gpo.gov/fdsys/pkg/CFR-2007-title45-vol1/pdf/CFR-2007-title45-vol1-chapA-subchapC.pdf
    idref: 164.308(a)(1)(ii)(D)
    relation: ''
  - system: https://www.gpo.gov/fdsys/pkg/CFR-2007-title45-vol1/pdf/CFR-2007-title45-vol1-chapA-subchapC.pdf
    idref: 164.312(b)
    relation: ''
  - system: https://www.gpo.gov/fdsys/pkg/CFR-2007-title45-vol1/pdf/CFR-2007-title45-vol1-chapA-subchapC.pdf
    idref: 164.312(c)(1)
    relation: ''
  - system: https://www.gpo.gov/fdsys/pkg/CFR-2007-title45-vol1/pdf/CFR-2007-title45-vol1-chapA-subchapC.pdf
    idref: 164.312(c)(2)
    relation: ''
  - system: https://www.gpo.gov/fdsys/pkg/CFR-2007-title45-vol1/pdf/CFR-2007-title45-vol1-chapA-subchapC.pdf
    idref: 164.312(e)(2)(i)
    relation: ''
  - system: https://www.isa.org/templates/one-column.aspx?pageid=111294&productId=116731
    idref: 4.3.4.3.2
    relation: ''
  - system: https://www.isa.org/templates/one-column.aspx?pageid=111294&productId=116731
    idref: 4.3.4.3.3
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
  - system: http://nvlpubs.nist.gov/nistpubs/SpecialPublications/NIST.SP.800-53r4.pdf
    idref: CM-5(3)
    relation: ''
  - system: http://nvlpubs.nist.gov/nistpubs/SpecialPublications/NIST.SP.800-53r4.pdf
    idref: CM-11
    relation: ''
  - system: https://nvlpubs.nist.gov/nistpubs/CSWP/NIST.CSWP.04162018.pdf
    idref: PR.IP-1
    relation: ''
  - system: https://www.niap-ccevs.org/Profile/PP.cfm
    idref: FAU_GEN.1.1.c
    relation: ''
  - system: http://iase.disa.mil/stigs/os/general/Pages/index.aspx
    idref: SRG-OS-000366-GPOS-00153
    relation: ''
  - system: org.scapolite.unknown
    idref: SRG-OS-000366-VMM-001430
    relation: ''
  - system: org.scapolite.unknown
    idref: SRG-OS-000370-VMM-001460
    relation: ''
  - system: org.scapolite.unknown
    idref: SRG-OS-000404-VMM-001650
    relation: ''
  - system: https://nvd.nist.gov/cce/index.cfm
    idref: CCE-80791-7
    relation: ''
---


## /rule

Ensure gpgcheck Enabled for Local Packages

## /rationale

Changes
to any software components can have significant effects to the overall
security of the operating system. This requirement ensures the software
has not been tampered and has been provided by a trusted vendor.  
  
Accordingly, patches, service packs, device drivers, or operating system
components must be signed with a certificate recognized and approved by
the organization.

## /description

`yum`
should be configured to verify the signature(s) of local packages prior
to installation. To configure `yum` to verify signatures of local
packages, set the `localpkg_gpgcheck` to `1` in `/etc/yum.conf`.
