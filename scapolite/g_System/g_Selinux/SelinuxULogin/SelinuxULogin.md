---
scapolite:
    class: rule
    version: '0.51'
id: selinux_user_login_roles
id_namespace: org.ssgproject.RHEL-8
title: Map System Users To The Appropriate SELinux Role
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
      - system: http://scap.nist.gov/schema/ocil/2
        idref: ocil:ssg-selinux_user_login_roles_ocil:questionnaire:1
        href: selinux_user_login_roles.ocil.xml
crossrefs:
  - system: http://iase.disa.mil/stigs/cci/Pages/index.aspx
    idref: CCI-002235
    relation: ''
  - system: http://iase.disa.mil/stigs/os/general/Pages/index.aspx
    idref: SRG-OS-000324-GPOS-00125
    relation: ''
  - system: http://iase.disa.mil/stigs/os/unix-linux/Pages/index.aspx
    idref: RHEL-08-020020
    relation: ''
---


## /rule

Map System Users To The Appropriate SELinux Role

## /rationale

Preventing
non-privileged users from executing privileged functions mitigates the
risk that unauthorized individuals or processes may gain unnecessary
access to information or privileges.  
  
Privileged functions include, for example, establishing accounts,
performing system integrity checks, or administering cryptographic key
management activities. Non-privileged users are individuals who do not
possess appropriate authorizations. Circumventing intrusion detection
and prevention mechanisms or malicious code protection mechanisms are
examples of privileged functions that require protection from
non-privileged users.

## /description

Configure
the operating system to prevent non-privileged users from executing
privileged functions to include disabling, circumventing, or altering
implemented security safeguards/countermeasures. All administrators must
be mapped to the `sysadm_u` or `staff_u` users with the appropriate
domains (`sysadm_t` and `staff_t`).

``` 
$ sudo semanage login -m -s sysadm_u USER
```

or

``` 
$ sudo semanage login -m -s staff_u USER
```

  
  
All authorized non-administrative users must be mapped to the `user_u`
role or the appropriate domain (user\_t).

``` 
$ sudo semanage login -m -s user_u USER
```
