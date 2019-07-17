---
scapolite:
    class: rule
    version: '0.51'
id: dconf_gnome_disable_user_list
id_namespace: org.ssgproject.RHEL-8
title: Disable the GNOME3 Login User List
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
        href: dconf_gnome_disable_user_list.sh
  - relative_id: '02'
    title: Automated fix
    automations:
      - system: urn:xccdf:fix:script:ansible
        href: dconf_gnome_disable_user_list.ansible
        complexity: low
        disruption: medium
checks:
  - relative_id: '01'
    automations:
      - system: http://oval.mitre.org/XMLSchema/oval-definitions-5
        idref: oval:ssg-dconf_gnome_disable_user_list:def:1
        href: dconf_gnome_disable_user_list.oval.xml
  - relative_id: '02'
    automations:
      - system: http://scap.nist.gov/schema/ocil/2
        idref: ocil:ssg-dconf_gnome_disable_user_list_ocil:questionnaire:1
        href: dconf_gnome_disable_user_list.ocil.xml
crossrefs:
  - system: http://nvlpubs.nist.gov/nistpubs/SpecialPublications/NIST.SP.800-53r4.pdf
    idref: AC-23
    relation: ''
---


## /rule

Disable the GNOME3 Login User List

## /rationale

Leaving
the user list enabled is a security risk since it allows anyone with
physical access to the system to quickly enumerate known user accounts
without logging in.

## /description

In
the default graphical environment, users logging directly into the
system are greeted with a login screen that displays all known users.
This functionality should be disabled by setting `disable-user-list` to
`true`.  
  
To disable, add or edit `disable-user-list` to
`/etc/dconf/db/gdm.d/00-security-settings`. For example:

``` 
[org/gnome/login-screen]
disable-user-list=true
```

Once the setting has been added, add a lock to
`/etc/dconf/db/gdm.d/locks/00-security-settings-lock` to prevent user
modification. For example:

``` 
/org/gnome/login-screen/disable-user-list
```

After the settings have been set, run `dconf update`.
