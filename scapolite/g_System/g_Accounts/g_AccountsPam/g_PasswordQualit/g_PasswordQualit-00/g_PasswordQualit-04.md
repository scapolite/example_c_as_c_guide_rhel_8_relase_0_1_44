---
scapolite:
    class: group
    version: '0.51'
id: password_quality_pwquality
id_namespace: org.ssgproject.RHEL-8
title: Set Password Quality Requirements with pam\_pwquality
description: <see below>
values:
  - id: var_accounts_passwords_pam_faillock_fail_interval
    id_namespace: org.ssgproject.RHEL-8
    title: fail\_interval
    description: |
        Interval
        for counting failed login attempts before account lockout
    type: number
    default: '900'
    definitions:
      - selector: '100000000'
        value: 100000000
      - selector: '1800'
        value: 1800
      - selector: '3600'
        value: 3600
      - selector: '86400'
        value: 86400
      - selector: '900'
        value: 900
  - id: var_password_pam_ucredit
    id_namespace: org.ssgproject.RHEL-8
    title: ucredit
    description: |
        Minimum
        number of upper case in password
    type: number
    default: '1'
    definitions:
      - selector: '0'
        value: 0
      - selector: '1'
        value: -1
      - selector: '2'
        value: -2
  - id: var_password_pam_retry
    id_namespace: org.ssgproject.RHEL-8
    title: retry
    description: |
        Number
        of retry attempts before erroring out
    type: number
    default: '3'
    definitions:
      - selector: '1'
        value: 1
      - selector: '2'
        value: 2
      - selector: '3'
        value: 3
      - selector: '4'
        value: 4
      - selector: '5'
        value: 5
  - id: var_password_pam_minlen
    id_namespace: org.ssgproject.RHEL-8
    title: minlen
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
      - selector: '7'
        value: 7
      - selector: '8'
        value: 8
  - id: var_accounts_passwords_pam_faillock_unlock_time
    id_namespace: org.ssgproject.RHEL-8
    title: fail\_unlock\_time
    description: |
        Seconds
        before automatic unlocking or permanently locking after excessive failed
        logins
    type: string
    default: never
    definitions:
      - selector: '1800'
        value: 1800
      - selector: '3600'
        value: 3600
      - selector: '600'
        value: 600
      - selector: '604800'
        value: 604800
      - selector: '86400'
        value: 86400
      - selector: '900'
        value: 900
      - selector: never
        value: never
  - id: var_accounts_passwords_pam_faillock_deny
    id_namespace: org.ssgproject.RHEL-8
    title: fail\_deny
    description: |
        Number
        of failed login attempts before account lockout
    type: number
    default: '3'
    definitions:
      - selector: '10'
        value: 10
      - selector: '3'
        value: 3
      - selector: '5'
        value: 5
      - selector: '6'
        value: 6
  - id: var_password_pam_maxclassrepeat
    id_namespace: org.ssgproject.RHEL-8
    title: maxclassrepeat
    description: |
        Maximum
        Number of Consecutive Repeating Characters in a Password From the Same
        Character Class
    type: number
    default: '4'
    definitions:
      - selector: '1'
        value: 1
      - selector: '2'
        value: 2
      - selector: '3'
        value: 3
      - selector: '4'
        value: 4
  - id: var_password_pam_difok
    id_namespace: org.ssgproject.RHEL-8
    title: difok
    description: |
        Minimum
        number of characters not present in old password
    type: number
    default: '8'
    definitions:
      - selector: '15'
        value: 15
      - selector: '1'
        value: 1
      - selector: '2'
        value: 2
      - selector: '3'
        value: 3
      - selector: '4'
        value: 4
      - selector: '5'
        value: 5
      - selector: '6'
        value: 6
      - selector: '7'
        value: 7
      - selector: '8'
        value: 8
  - id: var_password_pam_maxrepeat
    id_namespace: org.ssgproject.RHEL-8
    title: maxrepeat
    description: |
        Maximum
        Number of Consecutive Repeating Characters in a Password
    type: number
    default: '3'
    definitions:
      - selector: '1'
        value: 1
      - selector: '2'
        value: 2
      - selector: '3'
        value: 3
  - id: var_password_pam_dcredit
    id_namespace: org.ssgproject.RHEL-8
    title: dcredit
    description: |
        Minimum
        number of digits in password
    type: number
    default: '1'
    definitions:
      - selector: '0'
        value: 0
      - selector: '1'
        value: -1
      - selector: '2'
        value: -2
  - id: var_password_pam_ocredit
    id_namespace: org.ssgproject.RHEL-8
    title: ocredit
    description: |
        Minimum
        number of other (special characters) in password
    type: number
    default: '1'
    definitions:
      - selector: '0'
        value: 0
      - selector: '1'
        value: -1
      - selector: '2'
        value: -2
  - id: var_password_pam_lcredit
    id_namespace: org.ssgproject.RHEL-8
    title: lcredit
    description: |
        Minimum
        number of lower case in password
    type: number
    default: '1'
    definitions:
      - selector: '0'
        value: 0
      - selector: '1'
        value: -1
      - selector: '2'
        value: -2
  - id: var_password_pam_minclass
    id_namespace: org.ssgproject.RHEL-8
    title: minclass
    description: |
        Minimum
        number of categories of characters that must exist in a password
    type: number
    default: '3'
    definitions:
      - selector: '1'
        value: 1
      - selector: '2'
        value: 2
      - selector: '3'
        value: 3
      - selector: '4'
        value: 4
contents:
  - class: rule_ref
    idref: accounts_password_pam_difok
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Ensure PAM Enforces Password Requirements - Minimum Differe ...
  - class: rule_ref
    idref: accounts_password_pam_ucredit
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Ensure PAM Enforces Password Requirements - Minimum Upperca ...
  - class: rule_ref
    idref: accounts_password_pam_minlen
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Ensure PAM Enforces Password Requirements - Minimum Length
  - class: rule_ref
    idref: accounts_password_pam_retry
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Ensure PAM Enforces Password Requirements - Authentication  ...
  - class: rule_ref
    idref: accounts_password_pam_minclass
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Ensure PAM Enforces Password Requirements - Minimum Differe ...
  - class: rule_ref
    idref: accounts_password_pam_maxrepeat
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Set Password Maximum Consecutive Repeating Characters
  - class: rule_ref
    idref: accounts_password_pam_ocredit
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Ensure PAM Enforces Password Requirements - Minimum Special ...
  - class: rule_ref
    idref: accounts_password_pam_lcredit
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Ensure PAM Enforces Password Requirements - Minimum Lowerca ...
  - class: rule_ref
    idref: accounts_password_pam_dcredit
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Ensure PAM Enforces Password Requirements - Minimum Digit C ...
  - class: rule_ref
    idref: accounts_password_pam_maxclassrepeat
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Ensure PAM Enforces Password Requirements - Maximum Consecu ...
---


## /description

The
`pam_pwquality` PAM module can be configured to meet requirements for a
variety of policies.  
  
For example, to configure `pam_pwquality` to require at least one
uppercase character, lowercase character, digit, and other (special)
character, make sure that `pam_pwquality` exists in
`/etc/pam.d/system-auth`:

``` 
password    requisite     pam_pwquality.so try_first_pass local_users_only retry=3 authtok_type=
```

If no such line exists, add one as the first line of the password
section in `/etc/pam.d/system-auth`. Next, modify the settings in
`/etc/security/pwquality.conf` to match the following:

``` 
difok = 4
minlen = 14
dcredit = -1
ucredit = -1
lcredit = -1
ocredit = -1
maxrepeat = 3
```

The arguments can be modified to ensure compliance with your
organization\'s security policy. Discussion of each parameter follows.
