---
scapolite:
    class: group
    version: '0.51'
id: inetd_and_xinetd
id_namespace: org.ssgproject.RHEL-8
title: Xinetd
description: <see below>
contents:
  - class: rule_ref
    idref: package_tcp_wrappers_installed
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Install tcp\_wrappers Package
  - class: rule_ref
    idref: package_xinetd_removed
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Uninstall xinetd Package
  - class: rule_ref
    idref: service_xinetd_disabled
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Disable xinetd Service
---


## /description

The
`xinetd` service acts as a dedicated listener for some network services
(mostly, obsolete ones) and can be used to provide access controls and
perform some logging. It has been largely obsoleted by other features,
and it is not installed by default. The older Inetd service is not even
available as part of Red Hat Enterprise Linux 8.
