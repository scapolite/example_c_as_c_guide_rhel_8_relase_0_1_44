---
scapolite:
    class: rule
    version: '0.51'
id: gconf_gnome_disable_wifi_create
id_namespace: org.ssgproject.RHEL-8
title: Disable WIFI Network Connection Creation in GNOME
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
        idref: ocil:ssg-gconf_gnome_disable_wifi_create_ocil:questionnaire:1
        href: gconf_gnome_disable_wifi_create.ocil.xml
---


## /rule

Disable WIFI Network Connection Creation in GNOME

## /rationale

Wireless
network connections should not be allowed to be configured by general
users on a given system as it could open the system to backdoor attacks.

## /description

`GNOME`
allows users to create ad-hoc wireless connections through the
`NetworkManager` applet. Wireless connections should be disabled by
running the following:

``` 
$ sudo gconftool-2 --direct \
  --config-source xml:readwrite:/etc/gconf/gconf.xml.mandatory \
  --type bool \
  --set /apps/nm-applet/disable-wifi-create true
```
