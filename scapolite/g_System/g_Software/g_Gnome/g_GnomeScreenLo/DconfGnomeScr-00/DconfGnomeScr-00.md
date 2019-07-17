---
scapolite:
    class: rule
    version: '0.51'
id: dconf_gnome_screensaver_user_info
id_namespace: org.ssgproject.RHEL-8
title: Disable Full User Name on Splash Shield
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
        href: dconf_gnome_screensaver_user_info.sh
  - relative_id: '02'
    title: Automated fix
    automations:
      - system: urn:xccdf:fix:script:ansible
        href: dconf_gnome_screensaver_user_info.ansible
        complexity: low
        disruption: medium
checks:
  - relative_id: '01'
    automations:
      - system: http://oval.mitre.org/XMLSchema/oval-definitions-5
        idref: oval:ssg-dconf_gnome_screensaver_user_info:def:1
        href: dconf_gnome_screensaver_user_info.oval.xml
  - relative_id: '02'
    automations:
      - system: http://scap.nist.gov/schema/ocil/2
        idref: ocil:ssg-dconf_gnome_screensaver_user_info_ocil:questionnaire:1
        href: dconf_gnome_screensaver_user_info.ocil.xml
crossrefs:
  - system: https://nvd.nist.gov/cce/index.cfm
    idref: CCE-80779-2
    relation: ''
  - system: https://www.niap-ccevs.org/Profile/PP.cfm
    idref: FMT_MOF_EXT.1
    relation: ''
  - system: https://nvd.nist.gov/cce/index.cfm
    idref: CCE-80779-2
    relation: ''
---


## /rule

Disable Full User Name on Splash Shield

## /rationale

Setting
the splash screen to not reveal the logged in user\'s name conceals who
has access to the system from passersby.

## /description

By
default when the screen is locked, the splash shield will show the
user\'s full name. This should be disabled to prevent casual observers
from seeing who has access to the system. This can be disabled by adding
or setting `show-full-name-in-top-bar` to `false` in
`/etc/dconf/db/local.d/00-security-settings`. For example:

``` 
[org/gnome/desktop/screensaver]
show-full-name-in-top-bar=false
```

Once the settings have been added, add a lock to
`/etc/dconf/db/local.d/locks/00-security-settings-lock` to prevent user
modification. For example:

``` 
/org/gnome/desktop/screensaver/show-full-name-in-top-bar
```

After the settings have been set, run `dconf update`.
