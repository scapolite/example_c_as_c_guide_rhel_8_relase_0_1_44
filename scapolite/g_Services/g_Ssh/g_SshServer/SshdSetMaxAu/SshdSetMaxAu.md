---
scapolite:
    class: rule
    version: '0.51'
id: sshd_set_max_auth_tries
id_namespace: org.ssgproject.RHEL-8
title: Set SSH authentication attempt limit
rule: <see below>
rationale: <see below>
description: <see below>
applicability:
  - system: org.scapolite.xccdf.applicability
    severity: medium
  - system: https://scap.nist.gov/schema/cpe/2.2
    cpes:
      - cpe:/a:machine
checks:
  - relative_id: '01'
    automations:
      - system: http://oval.mitre.org/XMLSchema/oval-definitions-5
        idref: oval:ssg-sshd_set_max_auth_tries:def:1
        href: sshd_set_max_auth_tries.oval.xml
        exports:
          - value_id_namespace: org.ssgproject.RHEL-8
            value_idref: sshd_max_auth_tries_value
            variable_idref: oval:ssg-sshd_max_auth_tries_value:var:1
  - relative_id: '02'
    automations:
      - system: http://scap.nist.gov/schema/ocil/2
        idref: ocil:ssg-sshd_set_max_auth_tries_ocil:questionnaire:1
        href: sshd_set_max_auth_tries.ocil.xml
---


## /rule

Set SSH authentication attempt limit

## /rationale

Setting
the MaxAuthTries parameter to a low number will minimize the risk of
successful brute force attacks to the SSH server.

## /description

The
`MaxAuthTries` parameter specifies the maximum number of authentication
attempts permitted per connection. Once the number of failures reaches
half this value, additional failures are logged. to set MaxAUthTries
edit `/etc/ssh/sshd_config` as follows:

``` 
MaxAuthTries tries
```
