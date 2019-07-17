---
scapolite:
    class: group
    version: '0.51'
id: sssd
id_namespace: org.ssgproject.RHEL-8
title: System Security Services Daemon
description: <see below>
values:
  - id: var_sssd_ssh_known_hosts_timeout
    id_namespace: org.ssgproject.RHEL-8
    title: SSSD ssh\_known\_hosts\_timeout option
    description: |
        Value
        of the ssh\_known\_hosts\_timeout option in the \[ssh\] section of SSSD
        configuration file /etc/sssd/sssd.conf.
    type: number
    default: 3_minutes
    definitions:
      - selector: 3_minutes
        value: 180
      - selector: 5_minutes
        value: 300
      - selector: 10_minutes
        value: 600
      - selector: 15_minutes
        value: 900
      - selector: 30_minutes
        value: 1800
      - selector: 1_day
        value: 86400
  - id: var_sssd_memcache_timeout
    id_namespace: org.ssgproject.RHEL-8
    title: SSSD memcache\_timeout option
    description: |
        Value
        of the memcache\_timeout option in the \[nss\] section of SSSD config
        /etc/sssd/sssd.conf.
    type: number
    default: 5_minutes
    definitions:
      - selector: 3_minutes
        value: 180
      - selector: 5_minutes
        value: 300
      - selector: 10_minutes
        value: 600
      - selector: 15_minutes
        value: 900
      - selector: 30_minutes
        value: 1800
      - selector: 1_day
        value: 86400
contents:
  - class: group_ref
    idref: sssd-ldap
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: System Security Services Daemon (SSSD) - LDAP
  - class: rule_ref
    idref: sssd_memcache_timeout
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Configure SSSD\'s Memory Cache to Expire
  - class: rule_ref
    idref: package_sssd_installed
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Install the SSSD Package
  - class: rule_ref
    idref: sssd_enable_pam_services
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Configure PAM in SSSD Services
  - class: rule_ref
    idref: service_sssd_enabled
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Enable the SSSD Service
  - class: rule_ref
    idref: sssd_ssh_known_hosts_timeout
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Configure SSSD to Expire SSH Known Hosts
  - class: rule_ref
    idref: sssd_enable_smartcards
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Enable Smartcards in SSSD
  - class: rule_ref
    idref: sssd_offline_cred_expiration
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Configure SSSD to Expire Offline Credentials
---


## /description

The
System Security Services Daemon (SSSD) is a system daemon that provides
access to different identity and authentication providers such as Red
Hat\'s IdM, Microsoft\'s AD, openLDAP, MIT Kerberos, etc. It uses a
common framework that can provide caching and offline support to systems
utilizing SSSD. SSSD using caching to reduce load on authentication
servers permit offline authentication as well as store extended user
data.  
  
For more information, see
