---
scapolite:
    class: group
    version: '0.51'
id: account_expiration
id_namespace: org.ssgproject.RHEL-8
title: Set Account Expiration Parameters
description: <see below>
values:
  - id: var_account_disable_post_pw_expiration
    id_namespace: org.ssgproject.RHEL-8
    title: |
        number of days after a password expires until the account is permanently
        disabled
    description: |
        The
        number of days to wait after a password expires, until the account will
        be permanently disabled.
    type: number
    default: '35'
    definitions:
      - selector: '0'
        value: 0
      - selector: '180'
        value: 180
      - selector: '30'
        value: 30
      - selector: '35'
        value: 35
      - selector: '40'
        value: 40
      - selector: '60'
        value: 60
      - selector: '90'
        value: 90
contents:
  - class: rule_ref
    idref: account_temp_expire_date
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Assign Expiration Date to Temporary Accounts
  - class: rule_ref
    idref: account_unique_name
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Ensure All Accounts on the System Have Unique Names
  - class: rule_ref
    idref: account_use_centralized_automated_auth
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Use Centralized and Automated Authentication
  - class: rule_ref
    idref: account_disable_post_pw_expiration
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Set Account Expiration Following Inactivity
---


## /description

Accounts
can be configured to be automatically disabled after a certain time
period, meaning that they will require administrator interaction to
become usable again. Expiration of accounts after inactivity can be set
for all accounts by default and also on a per-account basis, such as for
accounts that are known to be temporary. To configure automatic
expiration of an account following the expiration of its password (that
is, after the password has expired and not been changed), run the
following command, substituting `NUM_DAYS` and `USER` appropriately:

``` 
$ sudo chage -I NUM_DAYS USER
```

Accounts, such as temporary accounts, can also be configured to expire
on an explicitly-set date with the `-E` option. The file
`/etc/default/useradd` controls default settings for all newly-created
accounts created with the system\'s normal command line utilities.
