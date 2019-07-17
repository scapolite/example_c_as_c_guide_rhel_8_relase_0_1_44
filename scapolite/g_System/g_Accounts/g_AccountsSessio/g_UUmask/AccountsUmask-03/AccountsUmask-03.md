---
scapolite:
    class: rule
    version: '0.51'
id: accounts_umask_etc_profile
id_namespace: org.ssgproject.RHEL-8
title: Ensure the Default Umask is Set Correctly in /etc/profile
rule: <see below>
rationale: <see below>
description: <see below>
applicability:
  - system: org.scapolite.xccdf.applicability
implementations:
  - relative_id: '01'
    title: Automated fix
    automations:
      - system: urn:xccdf:fix:script:sh
        href: accounts_umask_etc_profile.sh
checks:
  - relative_id: '01'
    automations:
      - system: http://oval.mitre.org/XMLSchema/oval-definitions-5
        idref: oval:ssg-accounts_umask_etc_profile:def:1
        href: accounts_umask_etc_profile.oval.xml
        exports:
          - value_id_namespace: org.ssgproject.RHEL-8
            value_idref: var_accounts_user_umask
            variable_idref: oval:ssg-var_accounts_user_umask:var:1
  - relative_id: '02'
    automations:
      - system: http://scap.nist.gov/schema/ocil/2
        idref: ocil:ssg-accounts_umask_etc_profile_ocil:questionnaire:1
        href: accounts_umask_etc_profile.ocil.xml
crossrefs:
  - system: org.scapolite.unknown
    idref: 5.4.4
    relation: ''
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
  - system: http://iase.disa.mil/stigs/cci/Pages/index.aspx
    idref: CCI-000366
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

Ensure the Default Umask is Set Correctly in /etc/profile

## /rationale

The
umask value influences the permissions assigned to files when they are
created. A misconfigured umask value could result in files with
excessive permissions that can be read or written to by unauthorized
users.

## /description

To
ensure the default umask controlled by `/etc/profile` is set properly,
add or correct the `umask` setting in `/etc/profile` to read as follows:

``` {html="http://www.w3.org/1999/xhtml" ns0="http://checklists.nist.gov/xccdf/1.1"}
umask 
```
