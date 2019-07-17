---
scapolite:
    class: group
    version: '0.51'
id: disabling_squid
id_namespace: org.ssgproject.RHEL-8
title: Disable Squid if Possible
description: <see below>
contents:
  - class: rule_ref
    idref: service_squid_disabled
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Disable Squid
  - class: rule_ref
    idref: package_squid_removed
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Uninstall squid Package
---


## /description

If
Squid was installed and activated, but the system does not need to act
as a proxy server, then it should be disabled and removed.
