---
scapolite:
    class: group
    version: '0.51'
id: securing_httpd
id_namespace: org.ssgproject.RHEL-8
title: Secure Apache Configuration
description: <see below>
values:
  - id: var_httpd_loglevel
    id_namespace: org.ssgproject.RHEL-8
    title: HTTPD Log Level
    description: |
        The
        setting for LogLevel in /etc/httpd/conf/httpd.conf
    type: string
    default: warn
    definitions:
      - selector: alert
        value: alert
      - selector: crit
        value: crit
      - selector: emerg
        value: emerg
      - selector: error
        value: error
      - selector: warn
        value: warn
  - id: var_max_keepalive_requests
    id_namespace: org.ssgproject.RHEL-8
    title: Maximum KeepAlive Requests for HTTPD
    description: |
        The
        setting for MaxKeepAliveRequests in httpd.conf
    type: number
    default: '100'
    definitions:
      - selector: '100'
        value: 100
      - selector: '1000'
        value: 1000
      - selector: '10000'
        value: 10000
      - selector: '100000'
        value: 100000
      - selector: '500'
        value: 500
contents:
  - class: group_ref
    idref: httpd_secure_content
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Configure HTTPD-Served Web Content Securely
  - class: group_ref
    idref: httpd_minimize_loadable_modules
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Minimize Web Server Loadable Modules
  - class: group_ref
    idref: httpd_restrict_info_leakage
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Restrict Web Server Information Leakage
  - class: group_ref
    idref: httpd_configure_os_protect_web_server
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Configure Operating System to Protect Web Server
  - class: group_ref
    idref: httpd_configure_php_securely
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Configure PHP Securely
  - class: group_ref
    idref: httpd_use_dos_protection_modules
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Use Denial-of-Service Protection Modules
  - class: group_ref
    idref: httpd_configure_perl_securely
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Configure PERL Securely
  - class: group_ref
    idref: httpd_directory_restrictions
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Directory Restrictions
  - class: group_ref
    idref: httpd_modules_improve_security
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Use Appropriate Modules to Improve httpd\'s Security
  - class: rule_ref
    idref: httpd_nipr_accredited_dmz
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: A public web server, if hosted on the NIPRNet, must be isol ...
  - class: rule_ref
    idref: httpd_private_server_on_separate_subnet
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: A private web server must be located on a separate controll ...
  - class: rule_ref
    idref: httpd_configure_max_keepalive_requests
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Configure The Number of Allowed Simultaneous Requests
  - class: rule_ref
    idref: httpd_public_resources_not_shared
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Public web server resources must not be shared with private ...
  - class: rule_ref
    idref: httpd_enable_loglevel
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Enable HTTPD LogLevel
  - class: rule_ref
    idref: httpd_entrust_passwords
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: The web server password(s) must be entrusted to the SA or W ...
  - class: rule_ref
    idref: httpd_enable_error_logging
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Enable HTTPD Error Logging
  - class: rule_ref
    idref: httpd_no_compilers_in_prod
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Installation of a compiler on production web server is proh ...
  - class: rule_ref
    idref: httpd_configure_log_format
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Configure Error Log Format
  - class: rule_ref
    idref: httpd_remove_backups
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Backup interactive scripts on the production web server are ...
  - class: rule_ref
    idref: httpd_enable_system_logging
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Enable HTTPD System Logging
  - class: rule_ref
    idref: httpd_disable_mime_types
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: MIME types for csh or sh shell programs must be disabled
---


## /description

The
`httpd` configuration file is `/etc/httpd/conf/httpd.conf`. Apply the
recommendations in the remainder of this section to this file.
