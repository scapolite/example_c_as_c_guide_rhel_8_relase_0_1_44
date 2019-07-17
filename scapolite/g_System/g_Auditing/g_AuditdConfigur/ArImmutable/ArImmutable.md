---
scapolite:
    class: rule
    version: '0.51'
id: audit_rules_immutable
id_namespace: org.ssgproject.RHEL-8
title: Make the auditd Configuration Immutable
rule: <see below>
rationale: <see below>
description: <see below>
applicability:
  - system: org.scapolite.xccdf.applicability
    severity: medium
  - system: https://scap.nist.gov/schema/cpe/2.2
    cpes:
      - cpe:/a:machine
implementations:
  - relative_id: '01'
    title: Automated fix
    automations:
      - system: urn:xccdf:fix:script:sh
        href: audit_rules_immutable.sh
checks:
  - relative_id: '01'
    automations:
      - system: http://oval.mitre.org/XMLSchema/oval-definitions-5
        idref: oval:ssg-audit_rules_immutable:def:1
        href: audit_rules_immutable.oval.xml
crossrefs:
  - system: https://nvd.nist.gov/cce/index.cfm
    idref: CCE-80708-1
    relation: ''
  - system: org.scapolite.unknown
    idref: 4.1.18
    relation: ''
  - system: https://www.cisecurity.org/wp-content/uploads/2017/03/Poster_Winter2016_CSCs.pdf
    idref: '1'
    relation: ''
  - system: https://www.cisecurity.org/wp-content/uploads/2017/03/Poster_Winter2016_CSCs.pdf
    idref: '11'
    relation: ''
  - system: https://www.cisecurity.org/wp-content/uploads/2017/03/Poster_Winter2016_CSCs.pdf
    idref: '12'
    relation: ''
  - system: https://www.cisecurity.org/wp-content/uploads/2017/03/Poster_Winter2016_CSCs.pdf
    idref: '13'
    relation: ''
  - system: https://www.cisecurity.org/wp-content/uploads/2017/03/Poster_Winter2016_CSCs.pdf
    idref: '14'
    relation: ''
  - system: https://www.cisecurity.org/wp-content/uploads/2017/03/Poster_Winter2016_CSCs.pdf
    idref: '15'
    relation: ''
  - system: https://www.cisecurity.org/wp-content/uploads/2017/03/Poster_Winter2016_CSCs.pdf
    idref: '16'
    relation: ''
  - system: https://www.cisecurity.org/wp-content/uploads/2017/03/Poster_Winter2016_CSCs.pdf
    idref: '18'
    relation: ''
  - system: https://www.cisecurity.org/wp-content/uploads/2017/03/Poster_Winter2016_CSCs.pdf
    idref: '19'
    relation: ''
  - system: https://www.cisecurity.org/wp-content/uploads/2017/03/Poster_Winter2016_CSCs.pdf
    idref: '3'
    relation: ''
  - system: https://www.cisecurity.org/wp-content/uploads/2017/03/Poster_Winter2016_CSCs.pdf
    idref: '4'
    relation: ''
  - system: https://www.cisecurity.org/wp-content/uploads/2017/03/Poster_Winter2016_CSCs.pdf
    idref: '5'
    relation: ''
  - system: https://www.cisecurity.org/wp-content/uploads/2017/03/Poster_Winter2016_CSCs.pdf
    idref: '6'
    relation: ''
  - system: https://www.cisecurity.org/wp-content/uploads/2017/03/Poster_Winter2016_CSCs.pdf
    idref: '7'
    relation: ''
  - system: https://www.cisecurity.org/wp-content/uploads/2017/03/Poster_Winter2016_CSCs.pdf
    idref: '8'
    relation: ''
  - system: https://www.fbi.gov/file-repository/cjis-security-policy-v5_5_20160601-2-1.pdf
    idref: 5.4.1.1
    relation: ''
  - system: http://www.isaca.org/COBIT/Pages/default.aspx
    idref: APO01.06
    relation: ''
  - system: http://www.isaca.org/COBIT/Pages/default.aspx
    idref: APO10.01
    relation: ''
  - system: http://www.isaca.org/COBIT/Pages/default.aspx
    idref: APO10.03
    relation: ''
  - system: http://www.isaca.org/COBIT/Pages/default.aspx
    idref: APO10.04
    relation: ''
  - system: http://www.isaca.org/COBIT/Pages/default.aspx
    idref: APO10.05
    relation: ''
  - system: http://www.isaca.org/COBIT/Pages/default.aspx
    idref: APO11.04
    relation: ''
  - system: http://www.isaca.org/COBIT/Pages/default.aspx
    idref: APO12.06
    relation: ''
  - system: http://www.isaca.org/COBIT/Pages/default.aspx
    idref: BAI03.05
    relation: ''
  - system: http://www.isaca.org/COBIT/Pages/default.aspx
    idref: BAI08.02
    relation: ''
  - system: http://www.isaca.org/COBIT/Pages/default.aspx
    idref: DSS02.02
    relation: ''
  - system: http://www.isaca.org/COBIT/Pages/default.aspx
    idref: DSS02.04
    relation: ''
  - system: http://www.isaca.org/COBIT/Pages/default.aspx
    idref: DSS02.07
    relation: ''
  - system: http://www.isaca.org/COBIT/Pages/default.aspx
    idref: DSS03.01
    relation: ''
  - system: http://www.isaca.org/COBIT/Pages/default.aspx
    idref: DSS05.04
    relation: ''
  - system: http://www.isaca.org/COBIT/Pages/default.aspx
    idref: DSS05.07
    relation: ''
  - system: http://www.isaca.org/COBIT/Pages/default.aspx
    idref: DSS06.02
    relation: ''
  - system: http://www.isaca.org/COBIT/Pages/default.aspx
    idref: MEA01.01
    relation: ''
  - system: http://www.isaca.org/COBIT/Pages/default.aspx
    idref: MEA01.02
    relation: ''
  - system: http://www.isaca.org/COBIT/Pages/default.aspx
    idref: MEA01.03
    relation: ''
  - system: http://www.isaca.org/COBIT/Pages/default.aspx
    idref: MEA01.04
    relation: ''
  - system: http://www.isaca.org/COBIT/Pages/default.aspx
    idref: MEA01.05
    relation: ''
  - system: http://www.isaca.org/COBIT/Pages/default.aspx
    idref: MEA02.01
    relation: ''
  - system: http://nvlpubs.nist.gov/nistpubs/SpecialPublications/NIST.SP.800-171.pdf
    idref: 3.3.1
    relation: ''
  - system: http://nvlpubs.nist.gov/nistpubs/SpecialPublications/NIST.SP.800-171.pdf
    idref: 3.4.3
    relation: ''
  - system: https://www.gpo.gov/fdsys/pkg/CFR-2007-title45-vol1/pdf/CFR-2007-title45-vol1-chapA-subchapC.pdf
    idref: 164.308(a)(1)(ii)(D)
    relation: ''
  - system: https://www.gpo.gov/fdsys/pkg/CFR-2007-title45-vol1/pdf/CFR-2007-title45-vol1-chapA-subchapC.pdf
    idref: 164.308(a)(3)(ii)(A)
    relation: ''
  - system: https://www.gpo.gov/fdsys/pkg/CFR-2007-title45-vol1/pdf/CFR-2007-title45-vol1-chapA-subchapC.pdf
    idref: 164.308(a)(5)(ii)(C)
    relation: ''
  - system: https://www.gpo.gov/fdsys/pkg/CFR-2007-title45-vol1/pdf/CFR-2007-title45-vol1-chapA-subchapC.pdf
    idref: 164.312(a)(2)(i)
    relation: ''
  - system: https://www.gpo.gov/fdsys/pkg/CFR-2007-title45-vol1/pdf/CFR-2007-title45-vol1-chapA-subchapC.pdf
    idref: 164.310(a)(2)(iv)
    relation: ''
  - system: https://www.gpo.gov/fdsys/pkg/CFR-2007-title45-vol1/pdf/CFR-2007-title45-vol1-chapA-subchapC.pdf
    idref: 164.312(d)
    relation: ''
  - system: https://www.gpo.gov/fdsys/pkg/CFR-2007-title45-vol1/pdf/CFR-2007-title45-vol1-chapA-subchapC.pdf
    idref: 164.310(d)(2)(iii)
    relation: ''
  - system: https://www.gpo.gov/fdsys/pkg/CFR-2007-title45-vol1/pdf/CFR-2007-title45-vol1-chapA-subchapC.pdf
    idref: 164.312(b)
    relation: ''
  - system: https://www.gpo.gov/fdsys/pkg/CFR-2007-title45-vol1/pdf/CFR-2007-title45-vol1-chapA-subchapC.pdf
    idref: 164.312(e)
    relation: ''
  - system: https://www.isa.org/templates/one-column.aspx?pageid=111294&productId=116731
    idref: 4.2.3.10
    relation: ''
  - system: https://www.isa.org/templates/one-column.aspx?pageid=111294&productId=116731
    idref: 4.3.2.6.7
    relation: ''
  - system: https://www.isa.org/templates/one-column.aspx?pageid=111294&productId=116731
    idref: 4.3.3.3.9
    relation: ''
  - system: https://www.isa.org/templates/one-column.aspx?pageid=111294&productId=116731
    idref: 4.3.3.5.8
    relation: ''
  - system: https://www.isa.org/templates/one-column.aspx?pageid=111294&productId=116731
    idref: 4.3.3.7.3
    relation: ''
  - system: https://www.isa.org/templates/one-column.aspx?pageid=111294&productId=116731
    idref: 4.3.4.4.7
    relation: ''
  - system: https://www.isa.org/templates/one-column.aspx?pageid=111294&productId=116731
    idref: 4.3.4.5.6
    relation: ''
  - system: https://www.isa.org/templates/one-column.aspx?pageid=111294&productId=116731
    idref: 4.3.4.5.7
    relation: ''
  - system: https://www.isa.org/templates/one-column.aspx?pageid=111294&productId=116731
    idref: 4.3.4.5.8
    relation: ''
  - system: https://www.isa.org/templates/one-column.aspx?pageid=111294&productId=116731
    idref: 4.4.2.1
    relation: ''
  - system: https://www.isa.org/templates/one-column.aspx?pageid=111294&productId=116731
    idref: 4.4.2.2
    relation: ''
  - system: https://www.isa.org/templates/one-column.aspx?pageid=111294&productId=116731
    idref: 4.4.2.4
    relation: ''
  - system: https://www.isa.org/templates/one-column.aspx?pageid=111294&productId=116785
    idref: SR 2.1
    relation: ''
  - system: https://www.isa.org/templates/one-column.aspx?pageid=111294&productId=116785
    idref: SR 2.10
    relation: ''
  - system: https://www.isa.org/templates/one-column.aspx?pageid=111294&productId=116785
    idref: SR 2.11
    relation: ''
  - system: https://www.isa.org/templates/one-column.aspx?pageid=111294&productId=116785
    idref: SR 2.12
    relation: ''
  - system: https://www.isa.org/templates/one-column.aspx?pageid=111294&productId=116785
    idref: SR 2.8
    relation: ''
  - system: https://www.isa.org/templates/one-column.aspx?pageid=111294&productId=116785
    idref: SR 2.9
    relation: ''
  - system: https://www.isa.org/templates/one-column.aspx?pageid=111294&productId=116785
    idref: SR 5.2
    relation: ''
  - system: https://www.isa.org/templates/one-column.aspx?pageid=111294&productId=116785
    idref: SR 6.1
    relation: ''
  - system: https://www.iso.org/standard/54534.html
    idref: A.10.1.1
    relation: ''
  - system: https://www.iso.org/standard/54534.html
    idref: A.11.1.4
    relation: ''
  - system: https://www.iso.org/standard/54534.html
    idref: A.11.1.5
    relation: ''
  - system: https://www.iso.org/standard/54534.html
    idref: A.11.2.1
    relation: ''
  - system: https://www.iso.org/standard/54534.html
    idref: A.12.4.1
    relation: ''
  - system: https://www.iso.org/standard/54534.html
    idref: A.12.4.2
    relation: ''
  - system: https://www.iso.org/standard/54534.html
    idref: A.12.4.3
    relation: ''
  - system: https://www.iso.org/standard/54534.html
    idref: A.12.4.4
    relation: ''
  - system: https://www.iso.org/standard/54534.html
    idref: A.12.7.1
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
    idref: A.13.2.3
    relation: ''
  - system: https://www.iso.org/standard/54534.html
    idref: A.13.2.4
    relation: ''
  - system: https://www.iso.org/standard/54534.html
    idref: A.14.1.2
    relation: ''
  - system: https://www.iso.org/standard/54534.html
    idref: A.14.1.3
    relation: ''
  - system: https://www.iso.org/standard/54534.html
    idref: A.15.2.1
    relation: ''
  - system: https://www.iso.org/standard/54534.html
    idref: A.15.2.2
    relation: ''
  - system: https://www.iso.org/standard/54534.html
    idref: A.16.1.4
    relation: ''
  - system: https://www.iso.org/standard/54534.html
    idref: A.16.1.5
    relation: ''
  - system: https://www.iso.org/standard/54534.html
    idref: A.16.1.7
    relation: ''
  - system: https://www.iso.org/standard/54534.html
    idref: A.6.1.2
    relation: ''
  - system: https://www.iso.org/standard/54534.html
    idref: A.7.1.1
    relation: ''
  - system: https://www.iso.org/standard/54534.html
    idref: A.7.1.2
    relation: ''
  - system: https://www.iso.org/standard/54534.html
    idref: A.7.3.1
    relation: ''
  - system: https://www.iso.org/standard/54534.html
    idref: A.8.2.2
    relation: ''
  - system: https://www.iso.org/standard/54534.html
    idref: A.8.2.3
    relation: ''
  - system: https://www.iso.org/standard/54534.html
    idref: A.9.1.1
    relation: ''
  - system: https://www.iso.org/standard/54534.html
    idref: A.9.1.2
    relation: ''
  - system: https://www.iso.org/standard/54534.html
    idref: A.9.2.3
    relation: ''
  - system: https://www.iso.org/standard/54534.html
    idref: A.9.4.1
    relation: ''
  - system: https://www.iso.org/standard/54534.html
    idref: A.9.4.4
    relation: ''
  - system: https://www.iso.org/standard/54534.html
    idref: A.9.4.5
    relation: ''
  - system: http://nvlpubs.nist.gov/nistpubs/SpecialPublications/NIST.SP.800-53r4.pdf
    idref: AC-6
    relation: ''
  - system: http://nvlpubs.nist.gov/nistpubs/SpecialPublications/NIST.SP.800-53r4.pdf
    idref: AU-1(b)
    relation: ''
  - system: http://nvlpubs.nist.gov/nistpubs/SpecialPublications/NIST.SP.800-53r4.pdf
    idref: AU-2(a)
    relation: ''
  - system: http://nvlpubs.nist.gov/nistpubs/SpecialPublications/NIST.SP.800-53r4.pdf
    idref: AU-2(c)
    relation: ''
  - system: http://nvlpubs.nist.gov/nistpubs/SpecialPublications/NIST.SP.800-53r4.pdf
    idref: AU-2(d)
    relation: ''
  - system: http://nvlpubs.nist.gov/nistpubs/SpecialPublications/NIST.SP.800-53r4.pdf
    idref: IR-5
    relation: ''
  - system: https://nvlpubs.nist.gov/nistpubs/CSWP/NIST.CSWP.04162018.pdf
    idref: DE.AE-3
    relation: ''
  - system: https://nvlpubs.nist.gov/nistpubs/CSWP/NIST.CSWP.04162018.pdf
    idref: DE.AE-5
    relation: ''
  - system: https://nvlpubs.nist.gov/nistpubs/CSWP/NIST.CSWP.04162018.pdf
    idref: ID.SC-4
    relation: ''
  - system: https://nvlpubs.nist.gov/nistpubs/CSWP/NIST.CSWP.04162018.pdf
    idref: PR.AC-4
    relation: ''
  - system: https://nvlpubs.nist.gov/nistpubs/CSWP/NIST.CSWP.04162018.pdf
    idref: PR.DS-5
    relation: ''
  - system: https://nvlpubs.nist.gov/nistpubs/CSWP/NIST.CSWP.04162018.pdf
    idref: PR.PT-1
    relation: ''
  - system: https://nvlpubs.nist.gov/nistpubs/CSWP/NIST.CSWP.04162018.pdf
    idref: RS.AN-1
    relation: ''
  - system: https://nvlpubs.nist.gov/nistpubs/CSWP/NIST.CSWP.04162018.pdf
    idref: RS.AN-4
    relation: ''
  - system: https://www.pcisecuritystandards.org/documents/PCI_DSS_v3-1.pdf
    idref: Req-10.5.2
    relation: ''
  - system: https://nvd.nist.gov/cce/index.cfm
    idref: CCE-80708-1
    relation: ''
---


## /rule

Make the auditd Configuration Immutable

## /rationale

Making
the audit configuration immutable prevents accidental as well as
malicious modification of the audit rules, although it may be
problematic if legitimate changes are needed during system operation

## /description

If
the `auditd` daemon is configured to use the `augenrules` program to
read audit rules during daemon startup (the default), add the following
line to a file with suffix `.rules` in the directory
`/etc/audit/rules.d` in order to make the auditd configuration
immutable:

``` 
-e 2
```

If the `auditd` daemon is configured to use the `auditctl` utility to
read audit rules during daemon startup, add the following line to
`/etc/audit/audit.rules` file in order to make the auditd configuration
immutable:

``` 
-e 2
```

With this setting, a reboot will be required to change any audit rules.
