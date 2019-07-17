---
scapolite:
    class: rule
    version: '0.51'
id: accounts_logon_fail_delay
id_namespace: org.ssgproject.RHEL-8
title: Ensure the Logon Failure Delay is Set Correctly in login.defs
rule: <see below>
rationale: <see below>
description: <see below>
applicability:
  - system: org.scapolite.xccdf.applicability
    severity: low
  - system: https://scap.nist.gov/schema/cpe/2.2
    cpes:
      - cpe:/a:shadow-utils
implementations:
  - relative_id: '01'
    title: Automated fix
    automations:
      - system: urn:xccdf:fix:script:sh
        href: accounts_logon_fail_delay.sh
  - relative_id: '02'
    title: Automated fix
    automations:
      - system: urn:xccdf:fix:script:ansible
        href: accounts_logon_fail_delay.ansible
checks:
  - relative_id: '01'
    automations:
      - system: http://scap.nist.gov/schema/ocil/2
        idref: ocil:ssg-accounts_logon_fail_delay_ocil:questionnaire:1
        href: accounts_logon_fail_delay.ocil.xml
crossrefs:
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
    idref: AC-7(b)
    relation: ''
  - system: http://nvlpubs.nist.gov/nistpubs/SpecialPublications/NIST.SP.800-53r4.pdf
    idref: CM-6(b)
    relation: ''
  - system: https://nvlpubs.nist.gov/nistpubs/CSWP/NIST.CSWP.04162018.pdf
    idref: PR.IP-1
    relation: ''
  - system: http://iase.disa.mil/stigs/os/general/Pages/index.aspx
    idref: SRG-OS-000480-GPOS-00226
    relation: ''
---


## /rule

Ensure the Logon Failure Delay is Set Correctly in login.defs

## /rationale

Increasing
the time between a failed authentication attempt and re-prompting to
enter credentials helps to slow a single-threaded brute force attack.

## /description

To
ensure the logon failure delay controlled by `/etc/login.defs` is set
properly, add or correct the `FAIL_DELAY` setting in `/etc/login.defs`
to read as follows:

``` {html="http://www.w3.org/1999/xhtml" ns0="http://checklists.nist.gov/xccdf/1.1"}
FAIL_DELAY 
```
