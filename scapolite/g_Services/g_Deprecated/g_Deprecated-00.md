---
scapolite:
    class: group
    version: '0.51'
id: deprecated
id_namespace: org.ssgproject.RHEL-8
title: Deprecated services
description: <see below>
contents:
  - class: rule_ref
    idref: package_ntpdate_removed
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Uninstall the ntpdate package
  - class: rule_ref
    idref: package_nis_removed
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Uninstall the nis package
  - class: rule_ref
    idref: package_inetutils-telnetd_removed
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Uninstall the inet-based telnet server
  - class: rule_ref
    idref: package_telnetd_removed
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Uninstall the telnet server
  - class: rule_ref
    idref: package_telnetd-ssl_removed
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Uninstall the ssl compliant telnet server
---


## /description

Some
deprecated software services impact the overall system security due to
their behavior (leak of confidentiality in network exchange, usage as
uncontrolled communication channel, risk associated with the service due
to its old age, etc.
