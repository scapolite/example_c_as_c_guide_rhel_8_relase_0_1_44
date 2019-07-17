---
scapolite:
    class: group
    version: '0.51'
id: password_quality_pamcracklib
id_namespace: org.ssgproject.RHEL-8
title: Set Password Quality Requirements, if using pam\_cracklib
description: <see below>
contents:
  - class: rule_ref
    idref: cracklib_accounts_password_pam_maxrepeat
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Set Password to Maximum of Three Consecutive Repeating Char ...
  - class: rule_ref
    idref: cracklib_accounts_password_pam_ocredit
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Set Password Strength Minimum Special Characters
  - class: rule_ref
    idref: cracklib_accounts_password_pam_ucredit
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Set Password Strength Minimum Uppercase Characters
  - class: rule_ref
    idref: cracklib_accounts_password_pam_dcredit
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Set Password Strength Minimum Digit Characters
  - class: rule_ref
    idref: cracklib_accounts_password_pam_minlen
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Set Password Minimum Length
  - class: rule_ref
    idref: cracklib_accounts_password_pam_difok
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Set Password Strength Minimum Different Characters
  - class: rule_ref
    idref: cracklib_accounts_password_pam_minclass
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Set Password Strength Minimum Different Categories
  - class: rule_ref
    idref: cracklib_accounts_password_pam_lcredit
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Set Password Strength Minimum Lowercase Characters
  - class: rule_ref
    idref: cracklib_accounts_password_pam_retry
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Set Password Retry Prompts Permitted Per-Session
---


## /description

The
`pam_cracklib` PAM module can be configured to meet requirements for a
variety of policies.  
  
For example, to configure `pam_cracklib` to require at least one
uppercase character, lowercase character, digit, and other (special)
character, locate the following line in `/etc/pam.d/system-auth`:

``` 
password requisite pam_cracklib.so try_first_pass retry=3
```

and then alter it to read:

``` 
password required pam_cracklib.so try_first_pass retry=3 maxrepeat=3 minlen=14 dcredit=-1 ucredit=-1 ocredit=-1 lcredit=-1 difok=4
```

If no such line exists, add one as the first line of the password
section in `/etc/pam.d/system-auth`. The arguments can be modified to
ensure compliance with your organization\'s security policy. Discussion
of each parameter follows.
