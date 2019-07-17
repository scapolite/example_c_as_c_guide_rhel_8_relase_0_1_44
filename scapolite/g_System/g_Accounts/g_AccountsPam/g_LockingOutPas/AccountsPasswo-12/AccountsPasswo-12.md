---
scapolite:
    class: rule
    version: '0.51'
id: accounts_password_pam_unix_remember
id_namespace: org.ssgproject.RHEL-8
title: Limit Password Reuse
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
        href: accounts_password_pam_unix_remember.sh
  - relative_id: '02'
    title: Automated fix
    automations:
      - system: urn:xccdf:fix:script:ansible
        href: accounts_password_pam_unix_remember.ansible
        complexity: low
        disruption: medium
checks:
  - relative_id: '01'
    automations:
      - system: http://oval.mitre.org/XMLSchema/oval-definitions-5
        idref: oval:ssg-accounts_password_pam_unix_remember:def:1
        href: accounts_password_pam_unix_remember.oval.xml
        exports:
          - value_id_namespace: org.ssgproject.RHEL-8
            value_idref: var_password_pam_unix_remember
            variable_idref: oval:ssg-var_password_pam_unix_remember:var:1
  - relative_id: '02'
    automations:
      - system: http://scap.nist.gov/schema/ocil/2
        idref: ocil:ssg-accounts_password_pam_unix_remember_ocil:questionnaire:1
        href: accounts_password_pam_unix_remember.ocil.xml
crossrefs:
  - system: https://nvd.nist.gov/cce/index.cfm
    idref: CCE-80666-1
    relation: ''
  - system: org.scapolite.unknown
    idref: 5.3.3
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
  - system: https://www.cisecurity.org/wp-content/uploads/2017/03/Poster_Winter2016_CSCs.pdf
    idref: '5'
    relation: ''
  - system: https://www.fbi.gov/file-repository/cjis-security-policy-v5_5_20160601-2-1.pdf
    idref: 5.6.2.1.1
    relation: ''
  - system: http://www.isaca.org/COBIT/Pages/default.aspx
    idref: DSS05.04
    relation: ''
  - system: http://www.isaca.org/COBIT/Pages/default.aspx
    idref: DSS05.05
    relation: ''
  - system: http://www.isaca.org/COBIT/Pages/default.aspx
    idref: DSS05.07
    relation: ''
  - system: http://www.isaca.org/COBIT/Pages/default.aspx
    idref: DSS05.10
    relation: ''
  - system: http://www.isaca.org/COBIT/Pages/default.aspx
    idref: DSS06.03
    relation: ''
  - system: http://www.isaca.org/COBIT/Pages/default.aspx
    idref: DSS06.10
    relation: ''
  - system: http://nvlpubs.nist.gov/nistpubs/SpecialPublications/NIST.SP.800-171.pdf
    idref: 3.5.8
    relation: ''
  - system: http://iase.disa.mil/stigs/cci/Pages/index.aspx
    idref: CCI-000200
    relation: ''
  - system: https://www.isa.org/templates/one-column.aspx?pageid=111294&productId=116731
    idref: 4.3.3.2.2
    relation: ''
  - system: https://www.isa.org/templates/one-column.aspx?pageid=111294&productId=116731
    idref: 4.3.3.5.1
    relation: ''
  - system: https://www.isa.org/templates/one-column.aspx?pageid=111294&productId=116731
    idref: 4.3.3.5.2
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
  - system: https://www.isa.org/templates/one-column.aspx?pageid=111294&productId=116731
    idref: 4.3.3.7.2
    relation: ''
  - system: https://www.isa.org/templates/one-column.aspx?pageid=111294&productId=116731
    idref: 4.3.3.7.4
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
    idref: SR 1.3
    relation: ''
  - system: https://www.isa.org/templates/one-column.aspx?pageid=111294&productId=116785
    idref: SR 1.4
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
  - system: https://www.isa.org/templates/one-column.aspx?pageid=111294&productId=116785
    idref: SR 2.1
    relation: ''
  - system: https://www.iso.org/standard/54534.html
    idref: A.18.1.4
    relation: ''
  - system: https://www.iso.org/standard/54534.html
    idref: A.7.1.1
    relation: ''
  - system: https://www.iso.org/standard/54534.html
    idref: A.9.2.1
    relation: ''
  - system: https://www.iso.org/standard/54534.html
    idref: A.9.2.2
    relation: ''
  - system: https://www.iso.org/standard/54534.html
    idref: A.9.2.3
    relation: ''
  - system: https://www.iso.org/standard/54534.html
    idref: A.9.2.4
    relation: ''
  - system: https://www.iso.org/standard/54534.html
    idref: A.9.2.6
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
    idref: IA-5(f)
    relation: ''
  - system: http://nvlpubs.nist.gov/nistpubs/SpecialPublications/NIST.SP.800-53r4.pdf
    idref: IA-5(1)(e)
    relation: ''
  - system: https://nvlpubs.nist.gov/nistpubs/CSWP/NIST.CSWP.04162018.pdf
    idref: PR.AC-1
    relation: ''
  - system: https://nvlpubs.nist.gov/nistpubs/CSWP/NIST.CSWP.04162018.pdf
    idref: PR.AC-6
    relation: ''
  - system: https://nvlpubs.nist.gov/nistpubs/CSWP/NIST.CSWP.04162018.pdf
    idref: PR.AC-7
    relation: ''
  - system: https://www.pcisecuritystandards.org/documents/PCI_DSS_v3-1.pdf
    idref: Req-8.2.5
    relation: ''
  - system: http://iase.disa.mil/stigs/os/general/Pages/index.aspx
    idref: SRG-OS-000077-GPOS-00045
    relation: ''
  - system: org.scapolite.unknown
    idref: SRG-OS-000077-VMM-000440
    relation: ''
  - system: https://nvd.nist.gov/cce/index.cfm
    idref: CCE-80666-1
    relation: ''
---


## /rule

Limit Password Reuse

## /rationale

Preventing
re-use of previous passwords helps ensure that a compromised password is
not re-used by a user.

## /description

Do
not allow users to reuse recent passwords. This can be accomplished by
using the `remember` option for the `pam_unix` or `pam_pwhistory` PAM
modules.  
  
In the file `/etc/pam.d/system-auth`, append `remember=` to the line
which refers to the `pam_unix.so` or `pam_pwhistory.so`module, as shown
below:

-   for the `pam_unix.so` case:

        password sufficient pam_unix.so ...existing_options... remember=

-   for the `pam_pwhistory.so` case:

        password requisite pam_pwhistory.so ...existing_options... remember=

The DoD STIG requirement is 5 passwords.
