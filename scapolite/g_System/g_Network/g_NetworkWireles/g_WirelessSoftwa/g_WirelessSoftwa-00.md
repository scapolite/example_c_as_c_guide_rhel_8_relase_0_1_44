---
scapolite:
    class: group
    version: '0.51'
id: wireless_software
id_namespace: org.ssgproject.RHEL-8
title: Disable Wireless Through Software Configuration
description: <see below>
contents:
  - class: rule_ref
    idref: service_bluetooth_disabled
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Disable Bluetooth Service
  - class: rule_ref
    idref: kernel_module_bluetooth_disabled
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Disable Bluetooth Kernel Modules
  - class: rule_ref
    idref: wireless_disable_interfaces
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Deactivate Wireless Network Interfaces
  - class: rule_ref
    idref: wireless_disable_in_bios
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Disable WiFi or Bluetooth in BIOS
---


## /description

If
it is impossible to remove the wireless hardware from the device in
question, disable as much of it as possible through software. The
following methods can disable software support for wireless networking,
but note that these methods do not prevent malicious software or
careless users from re-activating the devices.
