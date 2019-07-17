---
scapolite:
    class: group
    version: '0.51'
id: selinux
id_namespace: org.ssgproject.RHEL-8
title: SELinux
description: <see below>
values:
  - id: var_selinux_state
    id_namespace: org.ssgproject.RHEL-8
    title: SELinux state
    description: |
        enforcing
        - SELinux security policy is enforced.  
        permissive - SELinux prints warnings instead of enforcing.  
        disabled - SELinux is fully disabled.
    type: string
    default: enforcing
    definitions:
      - selector: disabled
        value: disabled
      - selector: enforcing
        value: enforcing
      - selector: permissive
        value: permissive
  - id: var_selinux_policy_name
    id_namespace: org.ssgproject.RHEL-8
    title: SELinux policy
    description: |
        Type
        of policy in use. Possible values are:  
        targeted - Only targeted network daemons are protected.  
        strict - Full SELinux protection.  
        mls - Multiple levels of security
    type: string
    default: targeted
    definitions:
      - selector: mls
        value: mls
      - selector: targeted
        value: targeted
contents:
  - class: group_ref
    idref: selinux-booleans
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: SELinux - Booleans
  - class: rule_ref
    idref: grub2_enable_selinux
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Ensure SELinux Not Disabled in /etc/default/grub
  - class: rule_ref
    idref: selinux_all_devicefiles_labeled
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Ensure No Device Files are Unlabeled by SELinux
  - class: rule_ref
    idref: selinux_confinement_of_daemons
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Ensure No Daemons are Unconfined by SELinux
  - class: rule_ref
    idref: package_setroubleshoot_removed
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Uninstall setroubleshoot Package
  - class: rule_ref
    idref: package_mcstrans_removed
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Uninstall mcstrans Package
  - class: rule_ref
    idref: selinux_policytype
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Configure SELinux Policy
  - class: rule_ref
    idref: selinux_user_login_roles
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Map System Users To The Appropriate SELinux Role
  - class: rule_ref
    idref: selinux_state
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Ensure SELinux State is Enforcing
---


## /description

SELinux
is a feature of the Linux kernel which can be used to guard against
misconfigured or compromised programs. SELinux enforces the idea that
programs should be limited in what files they can access and what
actions they can take.  
  
The default SELinux policy, as configured on Red Hat Enterprise Linux 8,
has been sufficiently developed and debugged that it should be usable on
almost any system with minimal configuration and a small amount of
system administrator training. This policy prevents system services -
including most of the common network-visible services such as mail
servers, FTP servers, and DNS servers - from accessing files which those
services have no valid reason to access. This action alone prevents a
huge amount of possible damage from network attacks against services,
from trojaned software, and so forth.  
  
This guide recommends that SELinux be enabled using the default
(targeted) policy on every Red Hat Enterprise Linux 8 system, unless
that system has unusual requirements which make a stronger policy
appropriate.
