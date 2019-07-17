---
scapolite:
    class: rule
    version: '0.51'
id: audit_rules_networkconfig_modification
id_namespace: org.ssgproject.RHEL-8
title: Record Events that Modify the System\'s Network Environment
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
        href: audit_rules_networkconfig_modification.sh
checks:
  - relative_id: '01'
    automations:
      - system: http://oval.mitre.org/XMLSchema/oval-definitions-5
        idref: oval:ssg-audit_rules_networkconfig_modification:def:1
        href: audit_rules_networkconfig_modification.oval.xml
  - relative_id: '02'
    automations:
      - system: http://scap.nist.gov/schema/ocil/2
        idref: ocil:ssg-audit_rules_networkconfig_modification_ocil:questionnaire:1
        href: audit_rules_networkconfig_modification.ocil.xml
crossrefs:
  - system: https://nvd.nist.gov/cce/index.cfm
    idref: CCE-80723-0
    relation: ''
  - system: org.scapolite.unknown
    idref: 5.2.6
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
    idref: '19'
    relation: ''
  - system: https://www.cisecurity.org/wp-content/uploads/2017/03/Poster_Winter2016_CSCs.pdf
    idref: '2'
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
  - system: https://www.cisecurity.org/wp-content/uploads/2017/03/Poster_Winter2016_CSCs.pdf
    idref: '9'
    relation: ''
  - system: https://www.fbi.gov/file-repository/cjis-security-policy-v5_5_20160601-2-1.pdf
    idref: 5.4.1.1
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
    idref: APO13.01
    relation: ''
  - system: http://www.isaca.org/COBIT/Pages/default.aspx
    idref: BAI03.05
    relation: ''
  - system: http://www.isaca.org/COBIT/Pages/default.aspx
    idref: BAI08.02
    relation: ''
  - system: http://www.isaca.org/COBIT/Pages/default.aspx
    idref: DSS01.03
    relation: ''
  - system: http://www.isaca.org/COBIT/Pages/default.aspx
    idref: DSS01.04
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
    idref: DSS03.05
    relation: ''
  - system: http://www.isaca.org/COBIT/Pages/default.aspx
    idref: DSS05.02
    relation: ''
  - system: http://www.isaca.org/COBIT/Pages/default.aspx
    idref: DSS05.03
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
    idref: 3.1.7
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
    idref: 164.312(b)
    relation: ''
  - system: https://www.gpo.gov/fdsys/pkg/CFR-2007-title45-vol1/pdf/CFR-2007-title45-vol1-chapA-subchapC.pdf
    idref: 164.312(d)
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
    idref: 4.3.3.6.6
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
    idref: SR 1.13
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
    idref: SR 2.6
    relation: ''
  - system: https://www.isa.org/templates/one-column.aspx?pageid=111294&productId=116785
    idref: SR 2.8
    relation: ''
  - system: https://www.isa.org/templates/one-column.aspx?pageid=111294&productId=116785
    idref: SR 2.9
    relation: ''
  - system: https://www.isa.org/templates/one-column.aspx?pageid=111294&productId=116785
    idref: SR 3.1
    relation: ''
  - system: https://www.isa.org/templates/one-column.aspx?pageid=111294&productId=116785
    idref: SR 3.5
    relation: ''
  - system: https://www.isa.org/templates/one-column.aspx?pageid=111294&productId=116785
    idref: SR 3.8
    relation: ''
  - system: https://www.isa.org/templates/one-column.aspx?pageid=111294&productId=116785
    idref: SR 4.1
    relation: ''
  - system: https://www.isa.org/templates/one-column.aspx?pageid=111294&productId=116785
    idref: SR 4.3
    relation: ''
  - system: https://www.isa.org/templates/one-column.aspx?pageid=111294&productId=116785
    idref: SR 5.1
    relation: ''
  - system: https://www.isa.org/templates/one-column.aspx?pageid=111294&productId=116785
    idref: SR 5.2
    relation: ''
  - system: https://www.isa.org/templates/one-column.aspx?pageid=111294&productId=116785
    idref: SR 5.3
    relation: ''
  - system: https://www.isa.org/templates/one-column.aspx?pageid=111294&productId=116785
    idref: SR 6.1
    relation: ''
  - system: https://www.isa.org/templates/one-column.aspx?pageid=111294&productId=116785
    idref: SR 6.2
    relation: ''
  - system: https://www.isa.org/templates/one-column.aspx?pageid=111294&productId=116785
    idref: SR 7.1
    relation: ''
  - system: https://www.isa.org/templates/one-column.aspx?pageid=111294&productId=116785
    idref: SR 7.6
    relation: ''
  - system: https://www.iso.org/standard/54534.html
    idref: A.11.2.6
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
    idref: A.13.2.1
    relation: ''
  - system: https://www.iso.org/standard/54534.html
    idref: A.14.1.3
    relation: ''
  - system: https://www.iso.org/standard/54534.html
    idref: A.14.2.7
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
    idref: A.6.2.1
    relation: ''
  - system: https://www.iso.org/standard/54534.html
    idref: A.6.2.2
    relation: ''
  - system: http://nvlpubs.nist.gov/nistpubs/SpecialPublications/NIST.SP.800-53r4.pdf
    idref: AC-17(7)
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
    idref: AU-12(a)
    relation: ''
  - system: http://nvlpubs.nist.gov/nistpubs/SpecialPublications/NIST.SP.800-53r4.pdf
    idref: AU-12(c)
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
    idref: DE.CM-1
    relation: ''
  - system: https://nvlpubs.nist.gov/nistpubs/CSWP/NIST.CSWP.04162018.pdf
    idref: DE.CM-3
    relation: ''
  - system: https://nvlpubs.nist.gov/nistpubs/CSWP/NIST.CSWP.04162018.pdf
    idref: DE.CM-7
    relation: ''
  - system: https://nvlpubs.nist.gov/nistpubs/CSWP/NIST.CSWP.04162018.pdf
    idref: ID.SC-4
    relation: ''
  - system: https://nvlpubs.nist.gov/nistpubs/CSWP/NIST.CSWP.04162018.pdf
    idref: PR.AC-3
    relation: ''
  - system: https://nvlpubs.nist.gov/nistpubs/CSWP/NIST.CSWP.04162018.pdf
    idref: PR.PT-1
    relation: ''
  - system: https://nvlpubs.nist.gov/nistpubs/CSWP/NIST.CSWP.04162018.pdf
    idref: PR.PT-4
    relation: ''
  - system: https://nvlpubs.nist.gov/nistpubs/CSWP/NIST.CSWP.04162018.pdf
    idref: RS.AN-1
    relation: ''
  - system: https://nvlpubs.nist.gov/nistpubs/CSWP/NIST.CSWP.04162018.pdf
    idref: RS.AN-4
    relation: ''
  - system: https://www.pcisecuritystandards.org/documents/PCI_DSS_v3-1.pdf
    idref: Req-10.5.5
    relation: ''
  - system: https://nvd.nist.gov/cce/index.cfm
    idref: CCE-80723-0
    relation: ''
---


## /rule

Record Events that Modify the System\'s Network Environment

## /rationale

The
network environment should not be modified by anything other than
administrator action. Any change to network parameters should be
audited.

## /description

If
the `auditd` daemon is configured to use the `augenrules` program to
read audit rules during daemon startup (the default), add the following
lines to a file with suffix `.rules` in the directory
`/etc/audit/rules.d`, setting ARCH to either b32 or b64 as appropriate
for your system:

``` 
-a always,exit -F arch=ARCH -S sethostname,setdomainname -F key=audit_rules_networkconfig_modification
-w /etc/issue -p wa -k audit_rules_networkconfig_modification
-w /etc/issue.net -p wa -k audit_rules_networkconfig_modification
-w /etc/hosts -p wa -k audit_rules_networkconfig_modification
-w /etc/sysconfig/network -p wa -k audit_rules_networkconfig_modification
```

If the `auditd` daemon is configured to use the `auditctl` utility to
read audit rules during daemon startup, add the following lines to
`/etc/audit/audit.rules` file, setting ARCH to either b32 or b64 as
appropriate for your system:

``` 
-a always,exit -F arch=ARCH -S sethostname,setdomainname -F key=audit_rules_networkconfig_modification
-w /etc/issue -p wa -k audit_rules_networkconfig_modification
-w /etc/issue.net -p wa -k audit_rules_networkconfig_modification
-w /etc/hosts -p wa -k audit_rules_networkconfig_modification
-w /etc/sysconfig/network -p wa -k audit_rules_networkconfig_modification
```
