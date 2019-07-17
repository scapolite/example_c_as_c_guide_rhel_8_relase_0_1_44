---
scapolite:
    class: rule
    version: '0.51'
id: encrypt_partitions
id_namespace: org.ssgproject.RHEL-8
title: Encrypt Partitions
rule: <see below>
rationale: <see below>
description: <see below>
applicability:
  - system: org.scapolite.xccdf.applicability
    severity: high
  - system: https://scap.nist.gov/schema/cpe/2.2
    cpes:
      - cpe:/a:machine
checks:
  - relative_id: '01'
    automations:
      - system: http://scap.nist.gov/schema/ocil/2
        idref: ocil:ssg-encrypt_partitions_ocil:questionnaire:1
        href: encrypt_partitions.ocil.xml
crossrefs:
  - system: https://nvd.nist.gov/cce/index.cfm
    idref: CCE-80789-1
    relation: ''
  - system: https://www.cisecurity.org/wp-content/uploads/2017/03/Poster_Winter2016_CSCs.pdf
    idref: '13'
    relation: ''
  - system: https://www.cisecurity.org/wp-content/uploads/2017/03/Poster_Winter2016_CSCs.pdf
    idref: '14'
    relation: ''
  - system: http://www.isaca.org/COBIT/Pages/default.aspx
    idref: APO01.06
    relation: ''
  - system: http://www.isaca.org/COBIT/Pages/default.aspx
    idref: BAI02.01
    relation: ''
  - system: http://www.isaca.org/COBIT/Pages/default.aspx
    idref: BAI06.01
    relation: ''
  - system: http://www.isaca.org/COBIT/Pages/default.aspx
    idref: DSS04.07
    relation: ''
  - system: http://www.isaca.org/COBIT/Pages/default.aspx
    idref: DSS05.03
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
    idref: DSS06.06
    relation: ''
  - system: http://nvlpubs.nist.gov/nistpubs/SpecialPublications/NIST.SP.800-171.pdf
    idref: 3.13.16
    relation: ''
  - system: http://iase.disa.mil/stigs/cci/Pages/index.aspx
    idref: CCI-001199
    relation: ''
  - system: http://iase.disa.mil/stigs/cci/Pages/index.aspx
    idref: CCI-002475
    relation: ''
  - system: http://iase.disa.mil/stigs/cci/Pages/index.aspx
    idref: CCI-002476
    relation: ''
  - system: https://www.gpo.gov/fdsys/pkg/CFR-2007-title45-vol1/pdf/CFR-2007-title45-vol1-chapA-subchapC.pdf
    idref: 164.308(a)(1)(ii)(D)
    relation: ''
  - system: https://www.gpo.gov/fdsys/pkg/CFR-2007-title45-vol1/pdf/CFR-2007-title45-vol1-chapA-subchapC.pdf
    idref: 164.308(b)(1)
    relation: ''
  - system: https://www.gpo.gov/fdsys/pkg/CFR-2007-title45-vol1/pdf/CFR-2007-title45-vol1-chapA-subchapC.pdf
    idref: 164.310(d)
    relation: ''
  - system: https://www.gpo.gov/fdsys/pkg/CFR-2007-title45-vol1/pdf/CFR-2007-title45-vol1-chapA-subchapC.pdf
    idref: 164.312(a)(1)
    relation: ''
  - system: https://www.gpo.gov/fdsys/pkg/CFR-2007-title45-vol1/pdf/CFR-2007-title45-vol1-chapA-subchapC.pdf
    idref: 164.312(a)(2)(iii)
    relation: ''
  - system: https://www.gpo.gov/fdsys/pkg/CFR-2007-title45-vol1/pdf/CFR-2007-title45-vol1-chapA-subchapC.pdf
    idref: 164.312(a)(2)(iv)
    relation: ''
  - system: https://www.gpo.gov/fdsys/pkg/CFR-2007-title45-vol1/pdf/CFR-2007-title45-vol1-chapA-subchapC.pdf
    idref: 164.312(b)
    relation: ''
  - system: https://www.gpo.gov/fdsys/pkg/CFR-2007-title45-vol1/pdf/CFR-2007-title45-vol1-chapA-subchapC.pdf
    idref: 164.312(c)
    relation: ''
  - system: https://www.gpo.gov/fdsys/pkg/CFR-2007-title45-vol1/pdf/CFR-2007-title45-vol1-chapA-subchapC.pdf
    idref: 164.314(b)(2)(i)
    relation: ''
  - system: https://www.gpo.gov/fdsys/pkg/CFR-2007-title45-vol1/pdf/CFR-2007-title45-vol1-chapA-subchapC.pdf
    idref: 164.312(d)
    relation: ''
  - system: https://www.isa.org/templates/one-column.aspx?pageid=111294&productId=116785
    idref: SR 3.4
    relation: ''
  - system: https://www.isa.org/templates/one-column.aspx?pageid=111294&productId=116785
    idref: SR 4.1
    relation: ''
  - system: https://www.isa.org/templates/one-column.aspx?pageid=111294&productId=116785
    idref: SR 5.2
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
    idref: SC-13
    relation: ''
  - system: http://nvlpubs.nist.gov/nistpubs/SpecialPublications/NIST.SP.800-53r4.pdf
    idref: SC-28(1)
    relation: ''
  - system: https://nvlpubs.nist.gov/nistpubs/CSWP/NIST.CSWP.04162018.pdf
    idref: PR.DS-1
    relation: ''
  - system: https://nvlpubs.nist.gov/nistpubs/CSWP/NIST.CSWP.04162018.pdf
    idref: PR.DS-5
    relation: ''
  - system: http://iase.disa.mil/stigs/os/general/Pages/index.aspx
    idref: SRG-OS-000405-GPOS-00184
    relation: ''
  - system: http://iase.disa.mil/stigs/os/general/Pages/index.aspx
    idref: SRG-OS-000185-GPOS-00079
    relation: ''
  - system: org.scapolite.unknown
    idref: SRG-OS-000404-VMM-001650
    relation: ''
  - system: org.scapolite.unknown
    idref: SRG-OS-000405-VMM-001660
    relation: ''
  - system: https://nvd.nist.gov/cce/index.cfm
    idref: CCE-80789-1
    relation: ''
---


## /rule

Encrypt Partitions

## /rationale

The
risk of a system\'s physical compromise, particularly mobile systems
such as laptops, places its data at risk of compromise. Encrypting this
data mitigates the risk of its loss if the system is lost.

## /description

Red
Hat Enterprise Linux 8 natively supports partition encryption through
the Linux Unified Key Setup-on-disk-format (LUKS) technology. The
easiest way to encrypt a partition is during installation time.  
  
For manual installations, select the `Encrypt` checkbox during partition
creation to encrypt the partition. When this option is selected the
system will prompt for a passphrase to use in decrypting the partition.
The passphrase will subsequently need to be entered manually every time
the system boots.  
  
For automated/unattended installations, it is possible to use Kickstart
by adding the `--encrypted` and `--passphrase=` options to the
definition of each partition to be encrypted. For example, the following
line would encrypt the root partition:

``` 
part / --fstype=ext4 --size=100 --onpart=hda1 --encrypted --passphrase=PASSPHRASE
```

Any *PASSPHRASE* is stored in the Kickstart in plaintext, and the
Kickstart must then be protected accordingly. Omitting the
`--passphrase=` option from the partition definition will cause the
installer to pause and interactively ask for the passphrase during
installation.  
  
By default, the `Anaconda` installer uses `aes-xts-plain64` cipher with
a minimum `512` bit key size which should be compatible with FIPS
enabled.  
  
Detailed information on encrypting partitions using LUKS or LUKS ciphers
can be found on the Red Hat Enterprise Linux 8 Documentation web site:  
<https://access.redhat.com/documentation/en-US/Red_Hat_Enterprise_Linux/7/html/Security_Guide/sec-Encryption.html>.
