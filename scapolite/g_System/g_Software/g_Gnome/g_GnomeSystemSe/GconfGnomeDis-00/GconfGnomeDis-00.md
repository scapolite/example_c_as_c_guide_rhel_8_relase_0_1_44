---
scapolite:
    class: rule
    version: '0.51'
id: gconf_gnome_disable_clock_weather
id_namespace: org.ssgproject.RHEL-8
title: Disable the GNOME Clock Weather Feature
rule: <see below>
rationale: <see below>
description: <see below>
applicability:
  - system: org.scapolite.xccdf.applicability
    severity: medium
  - system: https://scap.nist.gov/schema/cpe/2.2
    cpes:
      - cpe:/a:gdm
checks:
  - relative_id: '01'
    automations:
      - system: http://scap.nist.gov/schema/ocil/2
        idref: ocil:ssg-gconf_gnome_disable_clock_weather_ocil:questionnaire:1
        href: gconf_gnome_disable_clock_weather.ocil.xml
---


## /rule

Disable the GNOME Clock Weather Feature

## /rationale

Disabling
the weather feature in the GNOME clock prevents the system from
connecting to the internet and diclosing the system location when set by
a user.

## /description

Run
the following command to activate locking of the screensaver in the
GNOME desktop when it is activated:

``` 
$ sudo gconftool-2 --direct \
  --config-source xml:readwrite:/etc/gconf/gconf.xml.mandatory \
  --type bool \
  --set /apps/panel/applets/clock/prefs/show_weather false
```
