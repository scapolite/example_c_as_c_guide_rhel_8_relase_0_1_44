---
scapolite:
    class: group
    version: '0.51'
id: httpd_core_modules
id_namespace: org.ssgproject.RHEL-8
title: httpd Core Modules
description: <see below>
contents:
  - class: group_ref
    idref: httpd_basic_authentication
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Minimize Modules for HTTP Basic Authentication
  - class: group_ref
    idref: httpd_optional_components
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Minimize Various Optional Components
  - class: group_ref
    idref: httpd_minimize_config_files_included
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Minimize Configuration Files Included
  - class: rule_ref
    idref: httpd_ldap_support
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Disable LDAP Support
  - class: rule_ref
    idref: httpd_url_correction
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Disable URL Correction on Misspelled Entries
  - class: rule_ref
    idref: httpd_cgi_support
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Disable CGI Support
  - class: rule_ref
    idref: httpd_mime_magic
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Disable MIME Magic
  - class: rule_ref
    idref: httpd_mod_rewrite
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Disable HTTP mod\_rewrite
  - class: rule_ref
    idref: httpd_proxy_support
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Disable Proxy Support
  - class: rule_ref
    idref: httpd_webdav
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Disable WebDAV (Distributed Authoring and Versioning)
  - class: rule_ref
    idref: httpd_enable_log_config
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Enable log\_config\_module For HTTPD Logging
  - class: rule_ref
    idref: httpd_digest_authentication
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Disable HTTP Digest Authentication
  - class: rule_ref
    idref: httpd_server_configuration_display
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Disable Web Server Configuration Display
  - class: rule_ref
    idref: httpd_server_side_includes
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Disable Server Side Includes
  - class: rule_ref
    idref: httpd_cache_support
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Disable Cache Support
  - class: rule_ref
    idref: httpd_server_activity_status
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Disable Server Activity Status
---


## /description

These
modules comprise a basic subset of modules that are likely needed for
base `httpd` functionality; ensure they are not commented out in
`/etc/httpd/conf/httpd.conf`:

``` 
LoadModule auth_basic_module modules/mod_auth_basic.so
LoadModule authn_default_module modules/mod_authn_default.so
LoadModule authz_host_module modules/mod_authz_host.so
LoadModule authz_user_module modules/mod_authz_user.so
LoadModule authz_groupfile_module modules/mod_authz_groupfile.so
LoadModule authz_default_module modules/mod_authz_default.so
LoadModule log_config_module modules/mod_log_config.so
LoadModule logio_module modules/mod_logio.so
LoadModule setenvif_module modules/mod_setenvif.so
LoadModule mime_module modules/mod_mome.so
LoadModule autoindex_module modules/mod_autoindex.so
LoadModule negotiation_module modules/mod_negotiation.so
LoadModule dir_module modules/mod_dir.so
LoadModule alias_module modules/mod_alias.so
```

Minimizing the number of loadable modules available to the web server
reduces risk by limiting the capabilities allowed by the web server.
