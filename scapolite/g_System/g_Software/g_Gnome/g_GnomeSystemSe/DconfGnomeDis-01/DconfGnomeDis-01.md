---
scapolite:
    class: rule
    version: '0.51'
id: dconf_gnome_disable_power_settings
id_namespace: org.ssgproject.RHEL-8
title: Disable Power Settings in GNOME3
rule: <see below>
rationale: <see below>
description: <see below>
applicability:
  - system: org.scapolite.xccdf.applicability
    severity: medium
  - system: https://scap.nist.gov/schema/cpe/2.2
    cpes:
      - cpe:/a:machine
checks:
  - relative_id: '01'
    automations:
      - system: http://oval.mitre.org/XMLSchema/oval-definitions-5
        idref: oval:ssg-dconf_gnome_disable_power_settings:def:1
        href: dconf_gnome_disable_power_settings.oval.xml
  - relative_id: '02'
    automations:
      - system: http://scap.nist.gov/schema/ocil/2
        idref: ocil:ssg-dconf_gnome_disable_power_settings_ocil:questionnaire:1
        href: dconf_gnome_disable_power_settings.ocil.xml
---


## /rule

Disable Power Settings in GNOME3

## /rationale

Power
settings should not be enabled on systems that are not mobile devices.
Enabling power settings on non-mobile devices could have unintended
processing consequences on standard systems.

## /description

By
default, `GNOME` enables a power profile designed for mobile devices
with battery usage. While useful for mobile devices, this setting should
be disabled for all other systems. To configure the system to disable
the power setting, add or set `active` to `false` in
`/etc/dconf/db/local.d/00-security-settings`. For example:

``` 
[org/gnome/settings-daemon/plugins/power]
active=false
```

Once the settings have been added, add a lock to
`/etc/dconf/db/local.d/locks/00-security-settings-lock` to prevent user
modification. For example:

``` 
/org/gnome/settings-daemon/plugins/power
```

After the settings have been set, run `dconf update`.
