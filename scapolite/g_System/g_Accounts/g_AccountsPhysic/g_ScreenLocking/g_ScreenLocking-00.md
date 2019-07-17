---
scapolite:
    class: group
    version: '0.51'
id: screen_locking
id_namespace: org.ssgproject.RHEL-8
title: Configure Screen Locking
description: <see below>
contents:
  - class: group_ref
    idref: console_screen_locking
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Configure Console Screen Locking
  - class: group_ref
    idref: smart_card_login
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Hardware Tokens for Authentication
---


## /description

When
a user must temporarily leave an account logged-in, screen locking
should be employed to prevent passersby from abusing the account. User
education and training is particularly important for screen locking to
be effective, and policies can be implemented to reinforce this.  
  
Automatic screen locking is only meant as a safeguard for those cases
where a user forgot to lock the screen.
