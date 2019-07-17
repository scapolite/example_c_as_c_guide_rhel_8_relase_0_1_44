---
scapolite:
    class: rule
    version: '0.51'
id: accounts_passwords_pam_faillock_deny
id_namespace: org.ssgproject.RHEL-8
title: Set Deny For Failed Password Attempts
rule: <see below>
rationale: <see below>
description: <see below>
applicability:
  - system: org.scapolite.xccdf.applicability
    severity: medium
  - system: https://scap.nist.gov/schema/cpe/2.2
    cpes:
      - cpe:/a:pam
implementations:
  - relative_id: '01'
    title: Automated fix
    automations:
      - system: urn:xccdf:fix:script:sh
        href: accounts_passwords_pam_faillock_deny.sh
  - relative_id: '02'
    title: Automated fix
    automations:
      - system: urn:xccdf:fix:script:ansible
        href: accounts_passwords_pam_faillock_deny.ansible
        complexity: low
        disruption: low
checks:
  - relative_id: '01'
    automations:
      - system: http://oval.mitre.org/XMLSchema/oval-definitions-5
        idref: oval:ssg-accounts_passwords_pam_faillock_deny:def:1
        href: accounts_passwords_pam_faillock_deny.oval.xml
        exports:
          - value_id_namespace: org.ssgproject.RHEL-8
            value_idref: var_accounts_passwords_pam_faillock_deny
            variable_idref: oval:ssg-var_accounts_passwords_pam_faillock_deny:var:1
  - relative_id: '02'
    automations:
      - system: http://scap.nist.gov/schema/ocil/2
        idref: ocil:ssg-accounts_passwords_pam_faillock_deny_ocil:questionnaire:1
        href: accounts_passwords_pam_faillock_deny.ocil.xml
crossrefs:
  - system: https://nvd.nist.gov/cce/index.cfm
    idref: CCE-80667-9
    relation: ''
  - system: org.scapolite.unknown
    idref: 5.3.2
    relation: ''
  - system: https://www.cisecurity.org/wp-content/uploads/2017/03/Poster_Winter2016_CSCs.pdf
    idref: '1'
    relation: ''
  - system: https://www.cisecurity.org/wp-content/uploads/2017/03/Poster_Winter2016_CSCs.pdf
    idref: '12'
    relation: ''
  - system: https://www.cisecurity.org/wp-content/uploads/2017/03/Poster_Winter2016_CSCs.pdf
    idref: '15'
    relation: ''
  - system: https://www.cisecurity.org/wp-content/uploads/2017/03/Poster_Winter2016_CSCs.pdf
    idref: '16'
    relation: ''
  - system: https://www.fbi.gov/file-repository/cjis-security-policy-v5_5_20160601-2-1.pdf
    idref: 5.5.3
    relation: ''
  - system: http://www.isaca.org/COBIT/Pages/default.aspx
    idref: DSS05.04
    relation: ''
  - system: http://www.isaca.org/COBIT/Pages/default.aspx
    idref: DSS05.10
    relation: ''
  - system: http://www.isaca.org/COBIT/Pages/default.aspx
    idref: DSS06.10
    relation: ''
  - system: http://nvlpubs.nist.gov/nistpubs/SpecialPublications/NIST.SP.800-171.pdf
    idref: 3.1.8
    relation: ''
  - system: http://iase.disa.mil/stigs/cci/Pages/index.aspx
    idref: CCI-002238
    relation: ''
  - system: http://iase.disa.mil/stigs/cci/Pages/index.aspx
    idref: CCI-000044
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
  - system: https://www.isa.org/templates/one-column.aspx?pageid=111294&productId=116785
    idref: SR 1.1
    relation: ''
  - system: https://www.isa.org/templates/one-column.aspx?pageid=111294&productId=116785
    idref: SR 1.10
    relation: ''
  - system: https://www.isa.org/templates/one-column.aspx?pageid=111294&productId=116785
    idref: SR 1.2
    relation: ''
  - system: https://www.isa.org/templates/one-column.aspx?pageid=111294&productId=116785
    idref: SR 1.5
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
  - system: https://www.iso.org/standard/54534.html
    idref: A.18.1.4
    relation: ''
  - system: https://www.iso.org/standard/54534.html
    idref: A.9.2.1
    relation: ''
  - system: https://www.iso.org/standard/54534.html
    idref: A.9.2.4
    relation: ''
  - system: https://www.iso.org/standard/54534.html
    idref: A.9.3.1
    relation: ''
  - system: https://www.iso.org/standard/54534.html
    idref: A.9.4.2
    relation: ''
  - system: https://www.iso.org/standard/54534.html
    idref: A.9.4.3
    relation: ''
  - system: http://nvlpubs.nist.gov/nistpubs/SpecialPublications/NIST.SP.800-53r4.pdf
    idref: AC-7(a)
    relation: ''
  - system: https://nvlpubs.nist.gov/nistpubs/CSWP/NIST.CSWP.04162018.pdf
    idref: PR.AC-7
    relation: ''
  - system: https://www.niap-ccevs.org/Profile/PP.cfm
    idref: FMT_MOF_EXT.1
    relation: ''
  - system: https://www.pcisecuritystandards.org/documents/PCI_DSS_v3-1.pdf
    idref: Req-8.1.6
    relation: ''
  - system: http://iase.disa.mil/stigs/os/general/Pages/index.aspx
    idref: SRG-OS-000329-GPOS-00128
    relation: ''
  - system: http://iase.disa.mil/stigs/os/general/Pages/index.aspx
    idref: SRG-OS-000021-GPOS-00005
    relation: ''
  - system: org.scapolite.unknown
    idref: SRG-OS-000021-VMM-000050
    relation: ''
  - system: https://nvd.nist.gov/cce/index.cfm
    idref: CCE-80667-9
    relation: ''
---


## /rule

Set Deny For Failed Password Attempts

## /rationale

Locking
out user accounts after a number of incorrect attempts prevents direct
password guessing attacks.

## /description

To
configure the system to lock out accounts after a number of incorrect
login attempts using `pam_faillock.so`, modify the content of both
`/etc/pam.d/system-auth` and `/etc/pam.d/password-auth` as follows:  
  

-   add the following line immediately `before` the `pam_unix.so`
    statement in the `AUTH` section:

        auth required pam_faillock.so preauth silent deny= unlock_time= fail_interval=

-   add the following line immediately `after` the `pam_unix.so`
    statement in the `AUTH` section:

        auth [default=die] pam_faillock.so authfail deny= unlock_time= fail_interval=

-   add the following line immediately `before` the `pam_unix.so`
    statement in the `ACCOUNT` section:

        account required pam_faillock.so
