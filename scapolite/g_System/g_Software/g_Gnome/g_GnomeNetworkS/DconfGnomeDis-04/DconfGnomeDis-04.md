---
scapolite:
    class: rule
    version: '0.51'
id: dconf_gnome_disable_wifi_notification
id_namespace: org.ssgproject.RHEL-8
title: Disable WIFI Network Notification in GNOME3
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
        href: dconf_gnome_disable_wifi_notification.sh
  - relative_id: '02'
    title: Automated fix
    automations:
      - system: urn:xccdf:fix:script:ansible
        href: dconf_gnome_disable_wifi_notification.ansible
        complexity: low
        disruption: medium
checks:
  - relative_id: '01'
    automations:
      - system: http://oval.mitre.org/XMLSchema/oval-definitions-5
        idref: oval:ssg-dconf_gnome_disable_wifi_notification:def:1
        href: dconf_gnome_disable_wifi_notification.oval.xml
  - relative_id: '02'
    automations:
      - system: http://scap.nist.gov/schema/ocil/2
        idref: ocil:ssg-dconf_gnome_disable_wifi_notification_ocil:questionnaire:1
        href: dconf_gnome_disable_wifi_notification.ocil.xml
crossrefs:
  - system: http://nvlpubs.nist.gov/nistpubs/SpecialPublications/NIST.SP.800-171.pdf
    idref: 3.1.16
    relation: ''
---


## /rule

Disable WIFI Network Notification in GNOME3

## /rationale

Wireless
network connections should not be allowed to be configured by general
users on a given system as it could open the system to backdoor attacks.

## /description

By
default, `GNOME` disables WIFI notification. This should be permanently
set so that users do not connect to a wireless network when the system
finds one. While useful for mobile devices, this setting should be
disabled for all other systems. To configure the system to disable the
WIFI notication, add or set `suppress-wireless-networks-available` to
`true` in `/etc/dconf/db/local.d/00-security-settings`. For example:

``` 
[org/gnome/nm-applet]
suppress-wireless-networks-available=true
```

Once the settings have been added, add a lock to
`/etc/dconf/db/local.d/locks/00-security-settings-lock` to prevent user
modification. For example:

``` 
/org/gnome/nm-applet/suppress-wireless-networks-available
```

After the settings have been set, run `dconf update`.
