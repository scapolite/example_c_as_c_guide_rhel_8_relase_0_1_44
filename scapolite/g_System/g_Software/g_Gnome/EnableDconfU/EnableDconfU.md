---
scapolite:
    class: rule
    version: '0.51'
id: enable_dconf_user_profile
id_namespace: org.ssgproject.RHEL-8
title: Configure GNOME3 DConf User Profile
rule: <see below>
rationale: <see below>
description: <see below>
applicability:
  - system: org.scapolite.xccdf.applicability
    severity: high
  - system: https://scap.nist.gov/schema/cpe/2.2
    cpes:
      - cpe:/a:machine
checks:
  - relative_id: '01'
    automations:
      - system: http://oval.mitre.org/XMLSchema/oval-definitions-5
        idref: oval:ssg-enable_dconf_user_profile:def:1
        href: enable_dconf_user_profile.oval.xml
  - relative_id: '02'
    automations:
      - system: http://scap.nist.gov/schema/ocil/2
        idref: ocil:ssg-enable_dconf_user_profile_ocil:questionnaire:1
        href: enable_dconf_user_profile.ocil.xml
---


## /rule

Configure GNOME3 DConf User Profile

## /rationale

Failure
to have a functional DConf profile prevents GNOME3 configuration
settings from being enforced for all users and allows various security
risks.

## /description

By
default, DConf provides a standard user profile. This profile contains a
list of DConf configuration databases. The user profile and database
always take the highest priority. As such the DConf User profile should
always exist and be configured correctly.  
  
To make sure that the user profile is configured correctly, the
`/etc/dconf/profile/user` should be set as follows:

``` 
user-db:user
system-db:local
system-db:site
system-db:distro
```
