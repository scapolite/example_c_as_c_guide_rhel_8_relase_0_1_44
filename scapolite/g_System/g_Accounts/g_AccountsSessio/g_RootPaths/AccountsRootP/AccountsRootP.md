---
scapolite:
    class: rule
    version: '0.51'
id: accounts_root_path_dirs_no_write
id_namespace: org.ssgproject.RHEL-8
title: |
    Ensure that Root\'s Path Does Not Include World or Group-Writable
    Directories
rule: <see below>
rationale: <see below>
description: <see below>
applicability:
  - system: org.scapolite.xccdf.applicability
    severity: medium
implementations:
  - relative_id: '01'
    title: Automated fix
    automations:
      - system: urn:xccdf:fix:script:ansible
        href: accounts_root_path_dirs_no_write.ansible
        complexity: low
        disruption: medium
checks:
  - relative_id: '01'
    automations:
      - system: http://oval.mitre.org/XMLSchema/oval-definitions-5
        idref: oval:ssg-accounts_root_path_dirs_no_write:def:1
        href: accounts_root_path_dirs_no_write.oval.xml
  - relative_id: '02'
    automations:
      - system: http://scap.nist.gov/schema/ocil/2
        idref: ocil:ssg-accounts_root_path_dirs_no_write_ocil:questionnaire:1
        href: accounts_root_path_dirs_no_write.ocil.xml
crossrefs:
  - system: https://nvd.nist.gov/cce/index.cfm
    idref: CCE-80672-9
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
  - system: http://iase.disa.mil/stigs/cci/Pages/index.aspx
    idref: CCI-000366
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
    idref: CM-6(b)
    relation: ''
  - system: https://nvlpubs.nist.gov/nistpubs/CSWP/NIST.CSWP.04162018.pdf
    idref: PR.IP-1
    relation: ''
  - system: https://nvd.nist.gov/cce/index.cfm
    idref: CCE-80672-9
    relation: ''
---


## /rule

Ensure that Root\'s Path Does Not Include World or Group-Writable
Directories

## /rationale

Such
entries increase the risk that root could execute code provided by
unprivileged users, and potentially malicious code.

## /description

For
each element in root\'s path, run:

``` 
# ls -ld DIR
```

and ensure that write permissions are disabled for group and other.
