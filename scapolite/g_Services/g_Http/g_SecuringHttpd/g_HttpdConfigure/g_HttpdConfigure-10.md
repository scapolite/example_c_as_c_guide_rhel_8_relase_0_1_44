---
scapolite:
    class: group
    version: '0.51'
id: httpd_configure_os_protect_web_server
id_namespace: org.ssgproject.RHEL-8
title: Configure Operating System to Protect Web Server
description: <see below>
contents:
  - class: group_ref
    idref: httpd_chroot
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Run httpd in a chroot Jail if Practical
  - class: group_ref
    idref: httpd_restrict_file_dir_access
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Restrict File and Directory Access
  - class: rule_ref
    idref: httpd_configure_remote_session_encryption
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Ensure Remote Administrative Access Is Encrypted
  - class: rule_ref
    idref: httpd_antivirus_scan_uploads
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Scan All Uploaded Content for Malicious Software
  - class: rule_ref
    idref: httpd_configure_firewall
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Configure firewall to Allow Access to the Web Server
---


## /description

The
following configuration steps should be taken on the system which hosts
the web server, in order to provide as safe an environment as possible
for the web server.
