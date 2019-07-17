---
scapolite:
    class: group
    version: '0.51'
id: httpd_modules_improve_security
id_namespace: org.ssgproject.RHEL-8
title: Use Appropriate Modules to Improve httpd\'s Security
description: <see below>
contents:
  - class: group_ref
    idref: httpd_deploy_mod_security
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Deploy mod\_security
  - class: group_ref
    idref: httpd_deploy_mod_ssl
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Deploy mod\_ssl
---


## /description

Among
the modules available for `httpd` are several whose use may improve the
security of the web server installation. This section recommends and
discusses the deployment of security-relevant modules.
