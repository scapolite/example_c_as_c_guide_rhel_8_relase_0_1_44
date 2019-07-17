---
scapolite:
    class: rule
    version: '0.51'
id: accounts_max_concurrent_login_sessions
id_namespace: org.ssgproject.RHEL-8
title: Limit the Number of Concurrent Login Sessions Allowed Per User
rule: <see below>
rationale: <see below>
description: <see below>
applicability:
  - system: org.scapolite.xccdf.applicability
    severity: low
  - system: https://scap.nist.gov/schema/cpe/2.2
    cpes:
      - cpe:/a:pam
implementations:
  - relative_id: '01'
    title: Automated fix
    automations:
      - system: urn:xccdf:fix:script:sh
        href: accounts_max_concurrent_login_sessions.sh
  - relative_id: '02'
    title: Automated fix
    automations:
      - system: urn:xccdf:fix:script:ansible
        href: accounts_max_concurrent_login_sessions.ansible
        complexity: low
        disruption: low
checks:
  - relative_id: '01'
    automations:
      - system: http://oval.mitre.org/XMLSchema/oval-definitions-5
        idref: oval:ssg-accounts_max_concurrent_login_sessions:def:1
        href: accounts_max_concurrent_login_sessions.oval.xml
        exports:
          - value_id_namespace: org.ssgproject.RHEL-8
            value_idref: var_accounts_max_concurrent_login_sessions
            variable_idref: oval:ssg-var_accounts_max_concurrent_login_sessions:var:1
  - relative_id: '02'
    automations:
      - system: http://scap.nist.gov/schema/ocil/2
        idref: ocil:ssg-accounts_max_concurrent_login_sessions_ocil:questionnaire:1
        href: accounts_max_concurrent_login_sessions.ocil.xml
crossrefs:
  - system: https://nvd.nist.gov/cce/index.cfm
    idref: CCE-80955-8
    relation: ''
  - system: https://www.cisecurity.org/wp-content/uploads/2017/03/Poster_Winter2016_CSCs.pdf
    idref: '14'
    relation: ''
  - system: https://www.cisecurity.org/wp-content/uploads/2017/03/Poster_Winter2016_CSCs.pdf
    idref: '15'
    relation: ''
  - system: https://www.cisecurity.org/wp-content/uploads/2017/03/Poster_Winter2016_CSCs.pdf
    idref: '18'
    relation: ''
  - system: https://www.cisecurity.org/wp-content/uploads/2017/03/Poster_Winter2016_CSCs.pdf
    idref: '9'
    relation: ''
  - system: https://www.fbi.gov/file-repository/cjis-security-policy-v5_5_20160601-2-1.pdf
    idref: 5.5.2.2
    relation: ''
  - system: http://www.isaca.org/COBIT/Pages/default.aspx
    idref: DSS01.05
    relation: ''
  - system: http://www.isaca.org/COBIT/Pages/default.aspx
    idref: DSS05.02
    relation: ''
  - system: http://iase.disa.mil/stigs/cci/Pages/index.aspx
    idref: CCI-000054
    relation: ''
  - system: https://www.isa.org/templates/one-column.aspx?pageid=111294&productId=116731
    idref: 4.3.3.4
    relation: ''
  - system: https://www.isa.org/templates/one-column.aspx?pageid=111294&productId=116785
    idref: SR 3.1
    relation: ''
  - system: https://www.isa.org/templates/one-column.aspx?pageid=111294&productId=116785
    idref: SR 3.8
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
    idref: A.14.1.2
    relation: ''
  - system: https://www.iso.org/standard/54534.html
    idref: A.14.1.3
    relation: ''
  - system: http://nvlpubs.nist.gov/nistpubs/SpecialPublications/NIST.SP.800-53r4.pdf
    idref: AC-10
    relation: ''
  - system: https://nvlpubs.nist.gov/nistpubs/CSWP/NIST.CSWP.04162018.pdf
    idref: PR.AC-5
    relation: ''
  - system: http://iase.disa.mil/stigs/os/general/Pages/index.aspx
    idref: SRG-OS-000027-GPOS-00008
    relation: ''
  - system: org.scapolite.unknown
    idref: SRG-OS-000027-VMM-000080
    relation: ''
  - system: https://nvd.nist.gov/cce/index.cfm
    idref: CCE-80955-8
    relation: ''
---


## /rule

Limit the Number of Concurrent Login Sessions Allowed Per User

## /rationale

Limiting
simultaneous user logins can insulate the system from denial of service
problems caused by excessive logins. Automated login processes operating
improperly or maliciously may result in an exceptional number of
simultaneous login sessions.

## /description

Limiting
the number of allowed users and sessions per user can limit risks
related to Denial of Service attacks. This addresses concurrent sessions
for a single account and does not address concurrent sessions by a
single user via multiple accounts. To set the number of concurrent
sessions per user add the following line in `/etc/security/limits.conf`:

``` {html="http://www.w3.org/1999/xhtml" ns0="http://checklists.nist.gov/xccdf/1.1"}
* hard maxlogins 
```
