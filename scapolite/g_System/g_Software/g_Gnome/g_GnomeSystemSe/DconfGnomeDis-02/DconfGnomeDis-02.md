---
scapolite:
    class: rule
    version: '0.51'
id: dconf_gnome_disable_geolocation
id_namespace: org.ssgproject.RHEL-8
title: Disable Geolocation in GNOME3
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
        href: dconf_gnome_disable_geolocation.sh
  - relative_id: '02'
    title: Automated fix
    automations:
      - system: urn:xccdf:fix:script:ansible
        href: dconf_gnome_disable_geolocation.ansible
        complexity: low
        disruption: medium
checks:
  - relative_id: '01'
    automations:
      - system: http://oval.mitre.org/XMLSchema/oval-definitions-5
        idref: oval:ssg-dconf_gnome_disable_geolocation:def:1
        href: dconf_gnome_disable_geolocation.oval.xml
  - relative_id: '02'
    automations:
      - system: http://scap.nist.gov/schema/ocil/2
        idref: ocil:ssg-dconf_gnome_disable_geolocation_ocil:questionnaire:1
        href: dconf_gnome_disable_geolocation.ocil.xml
---


## /rule

Disable Geolocation in GNOME3

## /rationale

Power
settings should not be enabled on systems that are not mobile devices.
Enabling power settings on non-mobile devices could have unintended
processing consequences on standard systems.

## /description

`GNOME`
allows the clock and applications to track and access location
information. This setting should be disabled as applications should not
track system location. To configure the system to disable location
tracking, add or set `enabled` to `false` in
`/etc/dconf/db/local.d/00-security-settings`. For example:

``` 
[org/gnome/system/location]
enabled=false
```

To configure the clock to disable location tracking, add or set
`geolocation` to `false` in
`/etc/dconf/db/local.d/00-security-settings`. For example:

``` 
[org/gnome/clocks]
geolocation=false
```

Once the settings have been added, add a lock to
`/etc/dconf/db/local.d/locks/00-security-settings-lock` to prevent user
modification. For example:

``` 
/org/gnome/system/location/enabled
/org/gnome/clocks/geolocation
```

After the settings have been set, run `dconf update`.
