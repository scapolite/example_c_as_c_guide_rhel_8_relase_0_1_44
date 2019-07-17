---
scapolite:
    class: rule
    version: '0.51'
id: aide_verify_acls
id_namespace: org.ssgproject.RHEL-8
title: Configure AIDE to Verify Access Control Lists (ACLs)
rule: <see below>
rationale: <see below>
description: <see below>
applicability:
  - system: org.scapolite.xccdf.applicability
    severity: low
  - system: https://scap.nist.gov/schema/cpe/2.2
    cpes:
      - cpe:/a:machine
implementations:
  - relative_id: '01'
    title: Automated fix
    automations:
      - system: urn:xccdf:fix:script:sh
        href: aide_verify_acls.sh
checks:
  - relative_id: '01'
    automations:
      - system: http://oval.mitre.org/XMLSchema/oval-definitions-5
        idref: oval:ssg-aide_verify_acls:def:1
        href: aide_verify_acls.oval.xml
  - relative_id: '02'
    automations:
      - system: http://scap.nist.gov/schema/ocil/2
        idref: ocil:ssg-aide_verify_acls_ocil:questionnaire:1
        href: aide_verify_acls.ocil.xml
crossrefs:
  - system: http://www.ssi.gouv.fr/administration/bonnes-pratiques/
    idref: NT28(R51)
    relation: ''
  - system: http://www.ssi.gouv.fr/administration/bonnes-pratiques/
    idref: NT28(R52)
    relation: ''
  - system: https://www.cisecurity.org/wp-content/uploads/2017/03/Poster_Winter2016_CSCs.pdf
    idref: '2'
    relation: ''
  - system: https://www.cisecurity.org/wp-content/uploads/2017/03/Poster_Winter2016_CSCs.pdf
    idref: '3'
    relation: ''
  - system: http://www.isaca.org/COBIT/Pages/default.aspx
    idref: APO01.06
    relation: ''
  - system: http://www.isaca.org/COBIT/Pages/default.aspx
    idref: BAI03.05
    relation: ''
  - system: http://www.isaca.org/COBIT/Pages/default.aspx
    idref: BAI06.01
    relation: ''
  - system: http://www.isaca.org/COBIT/Pages/default.aspx
    idref: DSS06.02
    relation: ''
  - system: http://iase.disa.mil/stigs/cci/Pages/index.aspx
    idref: CCI-000366
    relation: ''
  - system: https://www.isa.org/templates/one-column.aspx?pageid=111294&productId=116731
    idref: 4.3.4.4.4
    relation: ''
  - system: https://www.isa.org/templates/one-column.aspx?pageid=111294&productId=116785
    idref: SR 3.1
    relation: ''
  - system: https://www.isa.org/templates/one-column.aspx?pageid=111294&productId=116785
    idref: SR 3.3
    relation: ''
  - system: https://www.isa.org/templates/one-column.aspx?pageid=111294&productId=116785
    idref: SR 3.4
    relation: ''
  - system: https://www.isa.org/templates/one-column.aspx?pageid=111294&productId=116785
    idref: SR 3.8
    relation: ''
  - system: https://www.iso.org/standard/54534.html
    idref: A.11.2.4
    relation: ''
  - system: https://www.iso.org/standard/54534.html
    idref: A.12.2.1
    relation: ''
  - system: https://www.iso.org/standard/54534.html
    idref: A.12.5.1
    relation: ''
  - system: https://www.iso.org/standard/54534.html
    idref: A.14.1.2
    relation: ''
  - system: https://www.iso.org/standard/54534.html
    idref: A.14.1.3
    relation: ''
  - system: https://www.iso.org/standard/54534.html
    idref: A.14.2.4
    relation: ''
  - system: http://nvlpubs.nist.gov/nistpubs/SpecialPublications/NIST.SP.800-53r4.pdf
    idref: SI-7.1
    relation: ''
  - system: https://nvlpubs.nist.gov/nistpubs/CSWP/NIST.CSWP.04162018.pdf
    idref: PR.DS-6
    relation: ''
  - system: https://nvlpubs.nist.gov/nistpubs/CSWP/NIST.CSWP.04162018.pdf
    idref: PR.DS-8
    relation: ''
  - system: http://iase.disa.mil/stigs/os/general/Pages/index.aspx
    idref: SRG-OS-000480-GPOS-00227
    relation: ''
---


## /rule

Configure AIDE to Verify Access Control Lists (ACLs)

## /rationale

ACLs
can provide permissions beyond those permitted through the file mode and
must be verified by the file integrity tools.

## /description

By
default, the `acl` option is added to the `FIPSR` ruleset in AIDE. If
using a custom ruleset or the `acl` option is missing, add `acl` to the
appropriate ruleset. For example, add `acl` to the following line in
`/etc/aide.conf`:

``` 
FIPSR = p+i+n+u+g+s+m+c+acl+selinux+xattrs+sha256
```

AIDE rules can be configured in multiple ways; this is merely one
example that is already configured by default.
