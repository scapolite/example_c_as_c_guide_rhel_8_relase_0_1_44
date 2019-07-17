---
scapolite:
    class: group
    version: '0.51'
id: password_expiration
id_namespace: org.ssgproject.RHEL-8
title: Set Password Expiration Parameters
description: <see below>
values:
  - id: var_accounts_minimum_age_login_defs
    id_namespace: org.ssgproject.RHEL-8
    title: minimum password age
    description: |
        Minimum
        age of password in days
    type: number
    default: '7'
    definitions:
      - selector: '0'
        value: 0
      - selector: '1'
        value: 1
      - selector: '2'
        value: 2
      - selector: '5'
        value: 5
      - selector: '7'
        value: 7
  - id: var_accounts_password_minlen_login_defs
    id_namespace: org.ssgproject.RHEL-8
    title: minimum password length
    description: |
        Minimum
        number of characters in password
    type: number
    default: '15'
    definitions:
      - selector: '10'
        value: 10
      - selector: '12'
        value: 12
      - selector: '14'
        value: 14
      - selector: '15'
        value: 15
      - selector: '6'
        value: 6
      - selector: '8'
        value: 8
  - id: var_accounts_maximum_age_login_defs
    id_namespace: org.ssgproject.RHEL-8
    title: maximum password age
    description: |
        Maximum
        age of password in days
    type: number
    default: '60'
    definitions:
      - selector: '120'
        value: 120
      - selector: '180'
        value: 180
      - selector: '60'
        value: 60
      - selector: '90'
        value: 90
  - id: var_accounts_password_warn_age_login_defs
    id_namespace: org.ssgproject.RHEL-8
    title: warning days before password expires
    description: |
        The
        number of days\' warning given before a password expires.
    type: number
    default: '7'
    definitions:
      - selector: '0'
        value: 0
      - selector: '14'
        value: 14
      - selector: '7'
        value: 7
contents:
  - class: rule_ref
    idref: accounts_maximum_age_login_defs
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Set Password Maximum Age
  - class: rule_ref
    idref: accounts_password_minlen_login_defs
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Set Password Minimum Length in login.defs
  - class: rule_ref
    idref: accounts_password_set_max_life_existing
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Set Existing Passwords Maximum Age
  - class: rule_ref
    idref: accounts_minimum_age_login_defs
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Set Password Minimum Age
  - class: rule_ref
    idref: accounts_password_set_min_life_existing
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Set Existing Passwords Minimum Age
  - class: rule_ref
    idref: accounts_password_warn_age_login_defs
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Set Password Warning Age
---


## /description

The
file `/etc/login.defs` controls several password-related settings.
Programs such as `passwd`, `su`, and `login` consult `/etc/login.defs`
to determine behavior with regard to password aging, expiration
warnings, and length. See the man page `login.defs(5)` for more
information.  
  
Users should be forced to change their passwords, in order to decrease
the utility of compromised passwords. However, the need to change
passwords often should be balanced against the risk that users will
reuse or write down passwords if forced to change them too often.
Forcing password changes every 90-360 days, depending on the
environment, is recommended. Set the appropriate value as
`PASS_MAX_DAYS` and apply it to existing accounts with the `-M` flag.  
  
The `PASS_MIN_DAYS` (`-m`) setting prevents password changes for 7 days
after the first change, to discourage password cycling. If you use this
setting, train users to contact an administrator for an emergency
password change in case a new password becomes compromised. The
`PASS_WARN_AGE` (`-W`) setting gives users 7 days of warnings at login
time that their passwords are about to expire.  
  
For example, for each existing human user *USER*, expiration parameters
could be adjusted to a 180 day maximum password age, 7 day minimum
password age, and 7 day warning period with the following command:

``` 
$ sudo chage -M 180 -m 7 -W 7 USER
```
