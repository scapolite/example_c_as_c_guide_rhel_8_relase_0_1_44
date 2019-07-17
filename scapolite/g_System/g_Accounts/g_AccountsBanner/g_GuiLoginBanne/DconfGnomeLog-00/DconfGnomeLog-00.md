---
scapolite:
    class: rule
    version: '0.51'
id: dconf_gnome_login_banner_text
id_namespace: org.ssgproject.RHEL-8
title: Set the GNOME3 Login Warning Banner Text
rule: <see below>
rationale: <see below>
description: <see below>
applicability:
  - system: org.scapolite.xccdf.applicability
    severity: medium
  - system: https://scap.nist.gov/schema/cpe/2.2
    cpes:
      - cpe:/a:gdm
implementations:
  - relative_id: '01'
    title: Automated fix
    automations:
      - system: urn:xccdf:fix:script:sh
        href: dconf_gnome_login_banner_text.sh
  - relative_id: '02'
    title: Automated fix
    automations:
      - system: urn:xccdf:fix:script:ansible
        href: dconf_gnome_login_banner_text.ansible
        complexity: low
        disruption: medium
checks:
  - relative_id: '01'
    automations:
      - system: http://scap.nist.gov/schema/ocil/2
        idref: ocil:ssg-dconf_gnome_login_banner_text_ocil:questionnaire:1
        href: dconf_gnome_login_banner_text.ocil.xml
crossrefs:
  - system: https://nvd.nist.gov/cce/index.cfm
    idref: CCE-80770-1
    relation: ''
  - system: org.scapolite.unknown
    idref: 1.7.2
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
    idref: 3.1.9
    relation: ''
  - system: http://iase.disa.mil/stigs/cci/Pages/index.aspx
    idref: CCI-000048
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
    idref: AC-8(a)
    relation: ''
  - system: http://nvlpubs.nist.gov/nistpubs/SpecialPublications/NIST.SP.800-53r4.pdf
    idref: AC-8(b)
    relation: ''
  - system: http://nvlpubs.nist.gov/nistpubs/SpecialPublications/NIST.SP.800-53r4.pdf
    idref: AC-8(c)
    relation: ''
  - system: https://nvlpubs.nist.gov/nistpubs/CSWP/NIST.CSWP.04162018.pdf
    idref: PR.AC-7
    relation: ''
  - system: https://www.niap-ccevs.org/Profile/PP.cfm
    idref: FMT_MOF_EXT.1
    relation: ''
  - system: http://iase.disa.mil/stigs/os/general/Pages/index.aspx
    idref: SRG-OS-000023-GPOS-00006
    relation: ''
  - system: http://iase.disa.mil/stigs/os/general/Pages/index.aspx
    idref: SRG-OS-000024-GPOS-00007
    relation: ''
  - system: http://iase.disa.mil/stigs/os/general/Pages/index.aspx
    idref: SRG-OS-000228-GPOS-00088
    relation: ''
  - system: https://nvd.nist.gov/cce/index.cfm
    idref: CCE-80770-1
    relation: ''
---


## /rule

Set the GNOME3 Login Warning Banner Text

## /rationale

An
appropriate warning message reinforces policy awareness during the logon
process and facilitates possible legal action against attackers.

## /description

In
the default graphical environment, configuring the login warning banner
text in the GNOME Display Manager\'s login screen can be configured on
the login screen by setting `banner-message-text` to
`string 'APPROVED_BANNER'` where *APPROVED\_BANNER* is the approved
banner for your environment.  
  
To enable, add or edit `banner-message-text` to
`/etc/dconf/db/gdm.d/00-security-settings`. For example:

``` 
[org/gnome/login-screen]
banner-message-text='APPROVED_BANNER'
```

Once the setting has been added, add a lock to
`/etc/dconf/db/gdm.d/locks/00-security-settings-lock` to prevent user
modification. For example:

``` 
/org/gnome/login-screen/banner-message-text
```

After the settings have been set, run `dconf update`. When entering a
warning banner that spans several lines, remember to begin and end the
string with `'` and use `\n` for new lines.
