---
scapolite:
    class: group
    version: '0.51'
id: network-wireless
id_namespace: org.ssgproject.RHEL-8
title: Wireless Networking
description: <see below>
contents:
  - class: group_ref
    idref: wireless_software
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Disable Wireless Through Software Configuration
---


## /description

Wireless
networking, such as 802.11 (WiFi) and Bluetooth, can present a security
risk to sensitive or classified systems and networks. Wireless
networking hardware is much more likely to be included in laptop or
portable systems than in desktops or servers.  
  
Removal of hardware provides the greatest assurance that the wireless
capability remains disabled. Acquisition policies often include
provisions to prevent the purchase of equipment that will be used in
sensitive spaces and includes wireless capabilities. If it is
impractical to remove the wireless hardware, and policy permits the
device to enter sensitive spaces as long as wireless is disabled,
efforts should instead focus on disabling wireless capability via
software.
