---
scapolite:
    class: rule
    version: '0.51'
id: clean_components_post_updating
id_namespace: org.ssgproject.RHEL-8
title: Ensure yum Removes Previous Package Versions
rule: <see below>
rationale: <see below>
description: <see below>
applicability:
  - system: org.scapolite.xccdf.applicability
    severity: low
  - system: https://scap.nist.gov/schema/cpe/2.2
    cpes:
      - cpe:/a:yum
implementations:
  - relative_id: '01'
    title: Automated fix
    automations:
      - system: urn:xccdf:fix:script:sh
        href: clean_components_post_updating.sh
  - relative_id: '02'
    title: Automated fix
    automations:
      - system: urn:xccdf:fix:script:ansible
        href: clean_components_post_updating.ansible
        complexity: low
        disruption: low
checks:
  - relative_id: '01'
    automations:
      - system: http://oval.mitre.org/XMLSchema/oval-definitions-5
        idref: oval:ssg-clean_components_post_updating:def:1
        href: clean_components_post_updating.oval.xml
  - relative_id: '02'
    automations:
      - system: http://scap.nist.gov/schema/ocil/2
        idref: ocil:ssg-clean_components_post_updating_ocil:questionnaire:1
        href: clean_components_post_updating.ocil.xml
crossrefs:
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
  - system: http://nvlpubs.nist.gov/nistpubs/SpecialPublications/NIST.SP.800-171.pdf
    idref: 3.4.8
    relation: ''
  - system: http://iase.disa.mil/stigs/cci/Pages/index.aspx
    idref: CCI-002617
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
    idref: SI-2(6)
    relation: ''
  - system: http://nvlpubs.nist.gov/nistpubs/SpecialPublications/NIST.SP.800-53r4.pdf
    idref: CM-11
    relation: ''
  - system: https://nvlpubs.nist.gov/nistpubs/CSWP/NIST.CSWP.04162018.pdf
    idref: ID.RA-1
    relation: ''
  - system: https://nvlpubs.nist.gov/nistpubs/CSWP/NIST.CSWP.04162018.pdf
    idref: PR.IP-12
    relation: ''
  - system: http://iase.disa.mil/stigs/os/general/Pages/index.aspx
    idref: SRG-OS-000437-GPOS-00194
    relation: ''
  - system: org.scapolite.unknown
    idref: SRG-OS-000437-VMM-001760
    relation: ''
---


## /rule

Ensure yum Removes Previous Package Versions

## /rationale

Previous
versions of software components that are not removed from the
information system after updates have been installed may be exploited by
some adversaries.

## /description

`yum`
should be configured to remove previous software components after new
versions have been installed. To configure `yum` to remove the previous
software components after updating, set the
`clean_requirements_on_remove` to `1` in `/etc/yum.conf`.
