---
scapolite:
    class: group
    version: '0.51'
id: httpd_deploy_mod_security
id_namespace: org.ssgproject.RHEL-8
title: Deploy mod\_security
description: <see below>
contents:
  - class: rule_ref
    idref: httpd_install_mod_security
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Install mod\_security
---


## /description

The
`security` module provides an application level firewall for `httpd`.
Following its installation with the base ruleset, specific configuration
advice can be found at <http://www.modsecurity.org/> to design a policy
that best matches the security needs of the web applications. Usage of
`mod_security` is highly recommended for some environments, but it
should be noted this module does not ship with Red Hat Enterprise Linux
itself, and instead is provided via Extra Packages for Enterprise Linux
(EPEL). For more information on EPEL please refer to
<http://fedoraproject.org/wiki/EPEL>.
