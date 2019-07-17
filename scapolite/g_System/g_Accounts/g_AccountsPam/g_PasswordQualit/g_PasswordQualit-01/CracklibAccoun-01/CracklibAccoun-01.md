---
scapolite:
    class: rule
    version: '0.51'
id: cracklib_accounts_password_pam_minclass
id_namespace: org.ssgproject.RHEL-8
title: Set Password Strength Minimum Different Categories
rule: <see below>
rationale: <see below>
description: <see below>
applicability:
  - system: org.scapolite.xccdf.applicability
checks:
  - relative_id: '01'
    automations:
      - system: http://scap.nist.gov/schema/ocil/2
        idref: ocil:ssg-cracklib_accounts_password_pam_minclass_ocil:questionnaire:1
        href: cracklib_accounts_password_pam_minclass.ocil.xml
---


## /rule

Set Password Strength Minimum Different Categories

## /rationale

Requiring
a minimum number of character categories makes password guessing attacks
more difficult by ensuring a larger search space.

## /description

The
pam\_cracklib module\'s `minclass` parameter controls requirements for
usage of different character classes, or types, of character that must
exist in a password before it is considered valid. For example, setting
this value to three (3) requires that any password must have characters
from at least three different categories in order to be approved. The
default value is zero (0), meaning there are no required classes. There
are four categories available:

``` 
* Upper-case characters
* Lower-case characters
* Digits
* Special characters (for example, punctuation)
```

Add `minclass=` after pam\_cracklib.so entry into the
`/etc/pam.d/system-auth` file in order to require differing categories
of characters when changing passwords. For example to require at least
three character classes to be used in password, use `minclass=3`.
