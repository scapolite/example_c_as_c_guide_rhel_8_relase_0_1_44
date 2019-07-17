---
scapolite:
    class: rule
    version: '0.51'
id: dconf_gnome_enable_smartcard_auth
id_namespace: org.ssgproject.RHEL-8
title: Enable the GNOME3 Login Smartcard Authentication
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
        href: dconf_gnome_enable_smartcard_auth.sh
  - relative_id: '02'
    title: Automated fix
    automations:
      - system: urn:xccdf:fix:script:ansible
        href: dconf_gnome_enable_smartcard_auth.ansible
        complexity: low
        disruption: medium
checks:
  - relative_id: '01'
    automations:
      - system: http://oval.mitre.org/XMLSchema/oval-definitions-5
        idref: oval:ssg-dconf_gnome_enable_smartcard_auth:def:1
        href: dconf_gnome_enable_smartcard_auth.oval.xml
  - relative_id: '02'
    automations:
      - system: http://scap.nist.gov/schema/ocil/2
        idref: ocil:ssg-dconf_gnome_enable_smartcard_auth_ocil:questionnaire:1
        href: dconf_gnome_enable_smartcard_auth.ocil.xml
crossrefs:
  - system: http://iase.disa.mil/stigs/cci/Pages/index.aspx
    idref: CCI-000765
    relation: ''
  - system: http://iase.disa.mil/stigs/cci/Pages/index.aspx
    idref: CCI-000766
    relation: ''
  - system: http://iase.disa.mil/stigs/cci/Pages/index.aspx
    idref: CCI-000767
    relation: ''
  - system: http://iase.disa.mil/stigs/cci/Pages/index.aspx
    idref: CCI-000768
    relation: ''
  - system: http://iase.disa.mil/stigs/cci/Pages/index.aspx
    idref: CCI-000771
    relation: ''
  - system: http://iase.disa.mil/stigs/cci/Pages/index.aspx
    idref: CCI-000772
    relation: ''
  - system: http://iase.disa.mil/stigs/cci/Pages/index.aspx
    idref: CCI-000884
    relation: ''
  - system: http://iase.disa.mil/stigs/cci/Pages/index.aspx
    idref: CCI-001954
    relation: ''
  - system: https://www.pcisecuritystandards.org/documents/PCI_DSS_v3-1.pdf
    idref: Req-8.3
    relation: ''
  - system: http://iase.disa.mil/stigs/os/general/Pages/index.aspx
    idref: SRG-OS-000375-GPOS-00160
    relation: ''
  - system: http://iase.disa.mil/stigs/os/unix-linux/Pages/index.aspx
    idref: RHEL-08-010061
    relation: ''
---


## /rule

Enable the GNOME3 Login Smartcard Authentication

## /rationale

Smart
card login provides two-factor authentication stronger than that
provided by a username and password combination. Smart cards leverage
PKI (public key infrastructure) in order to provide and verify
credentials.

## /description

In
the default graphical environment, smart card authentication can be
enabled on the login screen by setting `enable-smartcard-authentication`
to `true`.  
  
To enable, add or edit `enable-smartcard-authentication` to
`/etc/dconf/db/gdm.d/00-security-settings`. For example:

``` 
[org/gnome/login-screen]
enable-smartcard-authentication=true
```

Once the setting has been added, add a lock to
`/etc/dconf/db/gdm.d/locks/00-security-settings-lock` to prevent user
modification. For example:

``` 
/org/gnome/login-screen/enable-smartcard-authentication
```

After the settings have been set, run `dconf update`.
