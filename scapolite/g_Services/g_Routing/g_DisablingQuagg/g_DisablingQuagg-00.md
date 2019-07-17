---
scapolite:
    class: group
    version: '0.51'
id: disabling_quagga
id_namespace: org.ssgproject.RHEL-8
title: Disable Quagga if Possible
description: <see below>
contents:
  - class: rule_ref
    idref: service_zebra_disabled
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Disable Quagga Service
  - class: rule_ref
    idref: package_quagga_removed
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Uninstall quagga Package
---


## /description

If
Quagga was installed and activated, but the system does not need to act
as a router, then it should be disabled and removed.
