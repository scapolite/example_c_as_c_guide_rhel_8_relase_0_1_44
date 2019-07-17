---
scapolite:
    class: rule
    version: '0.51'
id: no_password_auth_for_systemaccounts
id_namespace: org.ssgproject.RHEL-8
title: Ensure that System Accounts Are Locked
rule: <see below>
rationale: <see below>
description: <see below>
applicability:
  - system: org.scapolite.xccdf.applicability
    severity: medium
checks:
  - relative_id: '01'
    automations:
      - system: http://scap.nist.gov/schema/ocil/2
        idref: ocil:ssg-no_password_auth_for_systemaccounts_ocil:questionnaire:1
        href: no_password_auth_for_systemaccounts.ocil.xml
crossrefs:
  - system: http://nvlpubs.nist.gov/nistpubs/SpecialPublications/NIST.SP.800-53r4.pdf
    idref: IA-2
    relation: ''
---


## /rule

Ensure that System Accounts Are Locked

## /rationale

Disabling
authentication for default system accounts makes it more difficult for
attackers to make use of them to compromise a system.false

## /description

Some
accounts are not associated with a human user of the system, and exist
to perform some administrative function. An attacker should not be able
to log into these accounts.  
  
System accounts are those user accounts with a user ID less than
UID\_MIN, where value of the UID\_MIN directive is set in
`/etc/login.defs` configuration file. In the default configuration
UID\_MIN is set to 500, thus system accounts are those user accounts
with a user ID less than 500. If any system account *SYSACCT* (other
than root) has an unlocked password, disable it with the command:

``` 
$ sudo passwd -l SYSACCT
```
