---
scapolite:
    class: rule
    version: '0.51'
id: gconf_gnome_screensaver_max_idle_time
id_namespace: org.ssgproject.RHEL-8
title: Set GNOME Login Maximum Allowed Inactivity
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
        idref: ocil:ssg-gconf_gnome_screensaver_max_idle_time_ocil:questionnaire:1
        href: gconf_gnome_screensaver_max_idle_time.ocil.xml
---


## /rule

Set GNOME Login Maximum Allowed Inactivity

## /rationale

Terminating
an idle session within a short time period reduces the window of
opportunity for unauthorized personnel to take control of a management
session and will also free up resources utilized by an idle session.

## /description

Run
the following command to set the maximum allowed period of inactivity
for an inactive user in the GNOME desktop to minutes:

``` {html="http://www.w3.org/1999/xhtml" ns0="http://checklists.nist.gov/xccdf/1.1"}
$ sudo gconftool-2 \
  --direct \
  --config-source xml:readwrite:/etc/gconf/gconf.xml.mandatory \
  --type int \
  --set /desktop/gnome/session/max_idle_time 
```
