---
scapolite:
    class: rule
    version: '0.51'
id: gconf_gnome_disable_wifi_disconnect
id_namespace: org.ssgproject.RHEL-8
title: Disable WIFI Network Disconnect Notification in GNOME
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
        idref: ocil:ssg-gconf_gnome_disable_wifi_disconnect_ocil:questionnaire:1
        href: gconf_gnome_disable_wifi_disconnect.ocil.xml
---


## /rule

Disable WIFI Network Disconnect Notification in GNOME

## /rationale

Wireless
network connections should not be allowed to be configured by general
users on a given system as it could open the system to backdoor attacks.

## /description

By
default, `GNOME` disables WIFI notification when disconnecting from a
wireless network. This should be permanently set so that users do not
connect to a wireless network when the system finds one. While useful
for mobile devices, this setting should be disabled for all other
systems. To configure the system to disable the WIFI notication, run the
following:

``` 
$ sudo gconftool-2 --direct \
  --config-source xml:readwrite:/etc/gconf/gconf.xml.mandatory \
  --type bool \
  --set /apps/nm-applet/disable-disconnected-notifications true
```
