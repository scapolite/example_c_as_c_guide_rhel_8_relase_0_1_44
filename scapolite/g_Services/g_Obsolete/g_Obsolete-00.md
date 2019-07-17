---
scapolite:
    class: group
    version: '0.51'
id: obsolete
id_namespace: org.ssgproject.RHEL-8
title: Obsolete Services
description: <see below>
contents:
  - class: group_ref
    idref: talk
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Chat/Messaging Services
  - class: group_ref
    idref: r_services
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Rlogin, Rsh, and Rexec
  - class: group_ref
    idref: telnet
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Telnet
  - class: group_ref
    idref: nis
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: NIS
  - class: group_ref
    idref: inetd_and_xinetd
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Xinetd
  - class: group_ref
    idref: tftp
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: TFTP Server
---


## /description

This
section discusses a number of network-visible services which have
historically caused problems for system security, and for which
disabling or severely limiting the service has been the best available
guidance for some time. As a result of this, many of these services are
not installed as part of Red Hat Enterprise Linux 8 by default.  
  
Organizations which are running these services should switch to more
secure equivalents as soon as possible. If it remains absolutely
necessary to run one of these services for legacy reasons, care should
be taken to restrict the service as much as possible, for instance by
configuring host firewall software such as `iptables` to restrict access
to the vulnerable service to only those remote hosts which have a known
need to use it.
