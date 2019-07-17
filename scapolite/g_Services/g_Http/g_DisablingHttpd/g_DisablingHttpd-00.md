---
scapolite:
    class: group
    version: '0.51'
id: disabling_httpd
id_namespace: org.ssgproject.RHEL-8
title: Disable Apache if Possible
description: <see below>
contents:
  - class: rule_ref
    idref: service_httpd_disabled
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Disable httpd Service
  - class: rule_ref
    idref: package_httpd_removed
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Uninstall httpd Package
---


## /description

If
Apache was installed and activated, but the system does not need to act
as a web server, then it should be disabled and removed from the system.
