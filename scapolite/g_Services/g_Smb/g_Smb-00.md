---
scapolite:
    class: group
    version: '0.51'
id: smb
id_namespace: org.ssgproject.RHEL-8
title: Samba(SMB) Microsoft Windows File Sharing Server
description: <see below>
contents:
  - class: group_ref
    idref: configuring_samba
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Configure Samba if Necessary
  - class: group_ref
    idref: disabling_samba
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Disable Samba if Possible
---


## /description

When
properly configured, the Samba service allows Linux systems to provide
file and print sharing to Microsoft Windows systems. There are two
software packages that provide Samba support. The first, `samba-client`,
provides a series of command line tools that enable a client system to
access Samba shares. The second, simply labeled `samba`, provides the
Samba service. It is this second package that allows a Linux system to
act as an Active Directory server, a domain controller, or as a domain
member. Only the `samba-client` package is installed by default.
