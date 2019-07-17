---
scapolite:
    class: group
    version: '0.51'
id: services
id_namespace: org.ssgproject.RHEL-8
title: Services
description: <see below>
contents:
  - class: group_ref
    idref: routing
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Network Routing
  - class: group_ref
    idref: apt
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: APT service configuration
  - class: group_ref
    idref: dns
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: DNS Server
  - class: group_ref
    idref: dhcp
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: DHCP
  - class: group_ref
    idref: base
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Base Services
  - class: group_ref
    idref: obsolete
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Obsolete Services
  - class: group_ref
    idref: sssd
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: System Security Services Daemon
  - class: group_ref
    idref: http
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Web Server
  - class: group_ref
    idref: xwindows
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: X Window System
  - class: group_ref
    idref: docker
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Docker Service
  - class: group_ref
    idref: ssh
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: SSH Server
  - class: group_ref
    idref: snmp
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: SNMP Server
  - class: group_ref
    idref: mail
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Mail Server Software
  - class: group_ref
    idref: ftp
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: FTP Server
  - class: group_ref
    idref: ntp
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Network Time Protocol
  - class: group_ref
    idref: proxy
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Proxy Server
  - class: group_ref
    idref: avahi
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Avahi Server
  - class: group_ref
    idref: ldap
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: LDAP
  - class: group_ref
    idref: printing
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Print Support
  - class: group_ref
    idref: smb
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Samba(SMB) Microsoft Windows File Sharing Server
  - class: group_ref
    idref: cron_and_at
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Cron and At Daemons
  - class: group_ref
    idref: deprecated
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Deprecated services
  - class: group_ref
    idref: nfs_and_rpc
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: NFS and RPC
  - class: group_ref
    idref: imap
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: IMAP and POP3 Server
---


## /description

The
best protection against vulnerable software is running less software.
This section describes how to review the software which Red Hat
Enterprise Linux 8 installs on a system and disable software which is
not needed. It then enumerates the software packages installed on a
default Red Hat Enterprise Linux 8 system and provides guidance about
which ones can be safely disabled.  
  
Red Hat Enterprise Linux 8 provides a convenient minimal install option
that essentially installs the bare necessities for a functional system.
When building Red Hat Enterprise Linux 8 systems, it is highly
recommended to select the minimal packages and then build up the system
from there.
