---
scapolite:
    class: group
    version: '0.51'
id: httpd_restrict_file_dir_access
id_namespace: org.ssgproject.RHEL-8
title: Restrict File and Directory Access
description: <see below>
contents:
  - class: rule_ref
    idref: file_permissions_httpd_server_conf_files
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Set Permissions on All Configuration Files Inside /etc/http ...
  - class: rule_ref
    idref: dir_perms_etc_httpd_conf
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Set Permissions on the /etc/httpd/conf/ Directory
  - class: rule_ref
    idref: dir_perms_var_log_httpd
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Set Permissions on the /var/log/httpd/ Directory
  - class: rule_ref
    idref: file_permissions_httpd_server_modules_files
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: "Set Permissions on All Configuration Files Inside\r\n/etc/htt ..."
  - class: rule_ref
    idref: file_permissions_httpd_server_conf_d_files
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Set Permissions on All Configuration Files Inside /etc/http ...
  - class: rule_ref
    idref: http_configure_log_file_ownership
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: HTTPD Log Files Must Be Owned By Root
---


## /description

Minimize
access to critical `httpd` files and directories.
