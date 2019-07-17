---
scapolite:
    class: rule
    version: '0.51'
id: dconf_gnome_login_retries
id_namespace: org.ssgproject.RHEL-8
title: Set the GNOME3 Login Number of Failures
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
        href: dconf_gnome_login_retries.sh
  - relative_id: '02'
    title: Automated fix
    automations:
      - system: urn:xccdf:fix:script:ansible
        href: dconf_gnome_login_retries.ansible
        complexity: low
        disruption: medium
checks:
  - relative_id: '01'
    automations:
      - system: http://oval.mitre.org/XMLSchema/oval-definitions-5
        idref: oval:ssg-dconf_gnome_login_retries:def:1
        href: dconf_gnome_login_retries.oval.xml
  - relative_id: '02'
    automations:
      - system: http://scap.nist.gov/schema/ocil/2
        idref: ocil:ssg-dconf_gnome_login_retries_ocil:questionnaire:1
        href: dconf_gnome_login_retries.ocil.xml
crossrefs:
  - system: https://nvd.nist.gov/cce/index.cfm
    idref: CCE-80771-9
    relation: ''
  - system: http://nvlpubs.nist.gov/nistpubs/SpecialPublications/NIST.SP.800-171.pdf
    idref: 3.1.8
    relation: ''
  - system: https://www.niap-ccevs.org/Profile/PP.cfm
    idref: FMT_MOF_EXT.1
    relation: ''
  - system: https://nvd.nist.gov/cce/index.cfm
    idref: CCE-80771-9
    relation: ''
---


## /rule

Set the GNOME3 Login Number of Failures

## /rationale

Setting
the password retry prompts that are permitted on a per-session basis to
a low value requires some software, such as SSH, to re-connect. This can
slow down and draw additional attention to some types of
password-guessing attacks.

## /description

In
the default graphical environment, the GNOME3 login screen and be
configured to restart the authentication process after a configured
number of attempts. This can be configured by setting `allowed-failures`
to `3` or less.  
  
To enable, add or edit `allowed-failures` to
`/etc/dconf/db/gdm.d/00-security-settings`. For example:

``` 
[org/gnome/login-screen]
allowed-failures=3
```

Once the setting has been added, add a lock to
`/etc/dconf/db/gdm.d/locks/00-security-settings-lock` to prevent user
modification. For example:

``` 
/org/gnome/login-screen/allowed-failures
```

After the settings have been set, run `dconf update`.
