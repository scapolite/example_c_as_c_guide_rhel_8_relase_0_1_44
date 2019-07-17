---
scapolite:
    class: rule
    version: '0.51'
id: gconf_gnome_screensaver_max_idle_action
id_namespace: org.ssgproject.RHEL-8
title: Set GNOME Login Maximum Allowed Inactivity Action
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
        idref: ocil:ssg-gconf_gnome_screensaver_max_idle_action_ocil:questionnaire:1
        href: gconf_gnome_screensaver_max_idle_action.ocil.xml
---


## /rule

Set GNOME Login Maximum Allowed Inactivity Action

## /rationale

Terminating
an idle session within a short time period reduces the window of
opportunity for unauthorized personnel to take control of a management
session and will also free up resources utilized by an idle session.

## /description

Run
the following command to set force logout an inactive user when the
maximum allowed inactivity period has expired:

``` 
$ sudo gconftool-2 --direct \
  --config-source xml:readwrite:/etc/gconf/gconf.xml.mandatory \
  --type string \
  --set /desktop/gnome/session/max_idle_action "forced-logout"
```
