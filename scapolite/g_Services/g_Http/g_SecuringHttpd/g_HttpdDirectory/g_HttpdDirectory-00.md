---
scapolite:
    class: group
    version: '0.51'
id: httpd_directory_restrictions
id_namespace: org.ssgproject.RHEL-8
title: Directory Restrictions
description: <see below>
contents:
  - class: rule_ref
    idref: httpd_disable_anonymous_ftp_access
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Disable Anonymous FTP Access
  - class: rule_ref
    idref: httpd_limit_available_methods
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Limit Available Methods
  - class: rule_ref
    idref: httpd_ignore_htaccess_files
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Ignore HTTPD .htaccess Files
  - class: rule_ref
    idref: httpd_restrict_root_directory
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Restrict Root Directory
  - class: rule_ref
    idref: httpd_restrict_critical_directories
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Restrict Other Critical Directories
  - class: rule_ref
    idref: httpd_anonymous_content_sharing
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Web Content Directories Must Not Be Shared Anonymously
  - class: rule_ref
    idref: httpd_restrict_web_directory
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Restrict Web Directory
  - class: rule_ref
    idref: httpd_configure_script_permissions
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Remove Write Permissions From Filesystem Paths And Server S ...
---


## /description

The
Directory tags in the web server configuration file allow finer grained
access control for a specified directory. All web directories should be
configured on a case-by-case basis, allowing access only where needed.
