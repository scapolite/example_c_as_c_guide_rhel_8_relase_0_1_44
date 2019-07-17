---
scapolite:
    class: rule
    version: '0.51'
id: dconf_gnome_remote_access_credential_prompt
id_namespace: org.ssgproject.RHEL-8
title: Require Credential Prompting for Remote Access in GNOME3
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
        href: dconf_gnome_remote_access_credential_prompt.sh
  - relative_id: '02'
    title: Automated fix
    automations:
      - system: urn:xccdf:fix:script:ansible
        href: dconf_gnome_remote_access_credential_prompt.ansible
        complexity: low
        disruption: medium
checks:
  - relative_id: '01'
    automations:
      - system: http://oval.mitre.org/XMLSchema/oval-definitions-5
        idref: oval:ssg-dconf_gnome_remote_access_credential_prompt:def:1
        href: dconf_gnome_remote_access_credential_prompt.oval.xml
  - relative_id: '02'
    automations:
      - system: http://scap.nist.gov/schema/ocil/2
        idref: ocil:ssg-dconf_gnome_remote_access_credential_prompt_ocil:questionnaire:1
        href: dconf_gnome_remote_access_credential_prompt.ocil.xml
crossrefs:
  - system: https://nvd.nist.gov/cce/index.cfm
    idref: CCE-80772-7
    relation: ''
  - system: http://nvlpubs.nist.gov/nistpubs/SpecialPublications/NIST.SP.800-171.pdf
    idref: 3.1.12
    relation: ''
  - system: https://www.gpo.gov/fdsys/pkg/CFR-2007-title45-vol1/pdf/CFR-2007-title45-vol1-chapA-subchapC.pdf
    idref: 164.308(a)(4)(i)
    relation: ''
  - system: https://www.gpo.gov/fdsys/pkg/CFR-2007-title45-vol1/pdf/CFR-2007-title45-vol1-chapA-subchapC.pdf
    idref: 164.308(b)(1)
    relation: ''
  - system: https://www.gpo.gov/fdsys/pkg/CFR-2007-title45-vol1/pdf/CFR-2007-title45-vol1-chapA-subchapC.pdf
    idref: 164.308(b)(3)
    relation: ''
  - system: https://www.gpo.gov/fdsys/pkg/CFR-2007-title45-vol1/pdf/CFR-2007-title45-vol1-chapA-subchapC.pdf
    idref: 164.310(b)
    relation: ''
  - system: https://www.gpo.gov/fdsys/pkg/CFR-2007-title45-vol1/pdf/CFR-2007-title45-vol1-chapA-subchapC.pdf
    idref: 164.312(e)(1)
    relation: ''
  - system: https://www.gpo.gov/fdsys/pkg/CFR-2007-title45-vol1/pdf/CFR-2007-title45-vol1-chapA-subchapC.pdf
    idref: 164.312(e)(2)(ii)
    relation: ''
  - system: https://nvd.nist.gov/cce/index.cfm
    idref: CCE-80772-7
    relation: ''
---


## /rule

Require Credential Prompting for Remote Access in GNOME3

## /rationale

Username
and password prompting is required for remote access. Otherwise,
non-authorized and nefarious users can access the system freely.

## /description

By
default, `GNOME` does not require credentials when using `Vino` for
remote access. To configure the system to require remote credentials,
add or set `authentication-methods` to `['vnc']` in
`/etc/dconf/db/local.d/00-security-settings`. For example:

``` 
[org/gnome/Vino]
authentication-methods=['vnc']
```

Once the settings have been added, add a lock to
`/etc/dconf/db/local.d/locks/00-security-settings-lock` to prevent user
modification. For example:

``` 
/org/gnome/Vino/authentication-methods
```

After the settings have been set, run `dconf update`.
