---
scapolite:
    class: group
    version: '0.51'
id: ftp_configure_vsftpd
id_namespace: org.ssgproject.RHEL-8
title: Configure vsftpd to Provide FTP Service if Necessary
description: <see below>
contents:
  - class: group_ref
    idref: ftp_restrict_users
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Restrict the Set of Users Allowed to Access FTP
  - class: rule_ref
    idref: ftp_present_banner
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Create Warning Banners for All FTP Users
  - class: rule_ref
    idref: ftp_log_transactions
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Enable Logging of All FTP Transactions
  - class: rule_ref
    idref: ftp_disable_uploads
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Disable FTP Uploads if Possible
  - class: rule_ref
    idref: ftp_home_partition
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Place the FTP Home Directory on its Own Partition
  - class: rule_ref
    idref: ftp_configure_firewall
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Configure Firewalls to Protect the FTP Server
---


## /description

The
primary vsftpd configuration file is `/etc/vsftpd.conf`, if that file
exists, or `/etc/vsftpd/vsftpd.conf` if it does not.
