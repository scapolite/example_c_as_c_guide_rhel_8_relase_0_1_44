---
scapolite:
    class: rule
    version: '0.51'
id: dconf_gnome_disable_user_admin
id_namespace: org.ssgproject.RHEL-8
title: Disable User Administration in GNOME3
rule: <see below>
rationale: <see below>
description: <see below>
applicability:
  - system: org.scapolite.xccdf.applicability
    severity: high
  - system: https://scap.nist.gov/schema/cpe/2.2
    cpes:
      - cpe:/a:machine
implementations:
  - relative_id: '01'
    title: Automated fix
    automations:
      - system: urn:xccdf:fix:script:sh
        href: dconf_gnome_disable_user_admin.sh
  - relative_id: '02'
    title: Automated fix
    automations:
      - system: urn:xccdf:fix:script:ansible
        href: dconf_gnome_disable_user_admin.ansible
        complexity: low
        disruption: medium
checks:
  - relative_id: '01'
    automations:
      - system: http://oval.mitre.org/XMLSchema/oval-definitions-5
        idref: oval:ssg-dconf_gnome_disable_user_admin:def:1
        href: dconf_gnome_disable_user_admin.oval.xml
  - relative_id: '02'
    automations:
      - system: http://scap.nist.gov/schema/ocil/2
        idref: ocil:ssg-dconf_gnome_disable_user_admin_ocil:questionnaire:1
        href: dconf_gnome_disable_user_admin.ocil.xml
crossrefs:
  - system: https://nvd.nist.gov/cce/index.cfm
    idref: CCE-80769-3
    relation: ''
  - system: http://nvlpubs.nist.gov/nistpubs/SpecialPublications/NIST.SP.800-171.pdf
    idref: 3.1.5
    relation: ''
  - system: https://www.niap-ccevs.org/Profile/PP.cfm
    idref: FMT_MOD_EXT.1
    relation: ''
  - system: https://nvd.nist.gov/cce/index.cfm
    idref: CCE-80769-3
    relation: ''
---


## /rule

Disable User Administration in GNOME3

## /rationale

Allowing
all users to have some administratrive capabilities to the system
through the Graphical User Interface (GUI) when they would not have them
otherwise could allow unintended configuration changes as well as a
nefarious user the capability to make system changes such as adding new
accounts, etc.

## /description

By
default, `GNOME` will allow all users to have some administratrion
capability. This should be disabled so that non-administrative users are
not making configuration changes. To configure the system to disable
user administration capability in the Graphical User Interface (GUI),
add or set `user-administration-disabled` to `true` in
`/etc/dconf/db/local.d/00-security-settings`. For example:

``` 
[org/gnome/desktop/lockdown]
user-administration-disabled=true
```

Once the settings have been added, add a lock to
`/etc/dconf/db/local.d/locks/00-security-settings-lock` to prevent user
modification. For example:

``` 
/org/gnome/desktop/lockdown/user-administration-disabled
```

After the settings have been set, run `dconf update`.
