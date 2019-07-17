---
scapolite:
    class: rule
    version: '0.51'
id: gconf_gdm_disable_user_list
id_namespace: org.ssgproject.RHEL-8
title: Disable the User List
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
        idref: ocil:ssg-gconf_gdm_disable_user_list_ocil:questionnaire:1
        href: gconf_gdm_disable_user_list.ocil.xml
crossrefs:
  - system: http://nvlpubs.nist.gov/nistpubs/SpecialPublications/NIST.SP.800-53r4.pdf
    idref: AC-23
    relation: ''
---


## /rule

Disable the User List

## /rationale

Leaving
the user list enabled is a security risk since it allows anyone with
physical access to the system to quickly enumerate known user accounts
without logging in.

## /description

In
the default graphical environment, users logging directly into the
system are greeted with a login screen that displays all known users.
This functionality should be disabled.  
  
Run the following command to disable the user list:

``` 
$ sudo gconftool-2 --direct \
  --config-source xml:readwrite:/etc/gconf/gconf.xml.mandatory \
  --type bool \
  --set /apps/gdm/simple-greeter/disable_user_list true
```
