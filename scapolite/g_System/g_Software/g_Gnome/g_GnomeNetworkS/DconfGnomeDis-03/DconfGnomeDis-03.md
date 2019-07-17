---
scapolite:
    class: rule
    version: '0.51'
id: dconf_gnome_disable_wifi_create
id_namespace: org.ssgproject.RHEL-8
title: Disable WIFI Network Connection Creation in GNOME3
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
        href: dconf_gnome_disable_wifi_create.sh
  - relative_id: '02'
    title: Automated fix
    automations:
      - system: urn:xccdf:fix:script:ansible
        href: dconf_gnome_disable_wifi_create.ansible
        complexity: low
        disruption: medium
checks:
  - relative_id: '01'
    automations:
      - system: http://oval.mitre.org/XMLSchema/oval-definitions-5
        idref: oval:ssg-dconf_gnome_disable_wifi_create:def:1
        href: dconf_gnome_disable_wifi_create.oval.xml
  - relative_id: '02'
    automations:
      - system: http://scap.nist.gov/schema/ocil/2
        idref: ocil:ssg-dconf_gnome_disable_wifi_create_ocil:questionnaire:1
        href: dconf_gnome_disable_wifi_create.ocil.xml
crossrefs:
  - system: http://nvlpubs.nist.gov/nistpubs/SpecialPublications/NIST.SP.800-171.pdf
    idref: 3.1.16
    relation: ''
---


## /rule

Disable WIFI Network Connection Creation in GNOME3

## /rationale

Wireless
network connections should not be allowed to be configured by general
users on a given system as it could open the system to backdoor attacks.

## /description

`GNOME`
allows users to create ad-hoc wireless connections through the
`NetworkManager` applet. Wireless connections should be disabled by
adding or setting `disable-wifi-create` to `true` in
`/etc/dconf/db/local.d/00-security-settings`. For example:

``` 
[org/gnome/nm-applet]
disable-wifi-create=true
```

Once the settings have been added, add a lock to
`/etc/dconf/db/local.d/locks/00-security-settings-lock` to prevent user
modification. For example:

``` 
/org/gnome/nm-applet/disable-wifi-create
```

After the settings have been set, run `dconf update`.
