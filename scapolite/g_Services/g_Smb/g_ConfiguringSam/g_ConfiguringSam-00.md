---
scapolite:
    class: group
    version: '0.51'
id: configuring_samba
id_namespace: org.ssgproject.RHEL-8
title: Configure Samba if Necessary
description: <see below>
contents:
  - class: group_ref
    idref: smb_restrict_file_sharing
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Restrict SMB File Sharing to Configured Networks
  - class: group_ref
    idref: smb_disable_printing
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Restrict Printer Sharing
  - class: rule_ref
    idref: require_smb_client_signing
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Require Client SMB Packet Signing, if using smbclient
  - class: rule_ref
    idref: smb_server_disable_root
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Disable Root Access to SMB Shares
  - class: rule_ref
    idref: mount_option_smb_client_signing
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Require Client SMB Packet Signing, if using mount.cifs
  - class: rule_ref
    idref: package_samba-common_installed
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Install the Samba Common Package
---


## /description

All
settings for the Samba daemon can be found in `/etc/samba/smb.conf`.
Settings are divided between a `[global]` configuration section and a
series of user created share definition sections meant to describe file
or print shares on the system. By default, Samba will operate in user
mode and allow client systems to access local home directories and
printers. It is recommended that these settings be changed or that
additional limitations be set in place.
