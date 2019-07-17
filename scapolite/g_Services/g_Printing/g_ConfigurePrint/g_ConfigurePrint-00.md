---
scapolite:
    class: group
    version: '0.51'
id: configure_printing
id_namespace: org.ssgproject.RHEL-8
title: Configure the CUPS Service if Necessary
description: <see below>
contents:
  - class: rule_ref
    idref: cups_disable_printserver
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Disable Print Server Capabilities
  - class: rule_ref
    idref: cups_disable_browsing
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Disable Printer Browsing Entirely if Possible
---


## /description

CUPS
provides the ability to easily share local printers with other systems
over the network. It does this by allowing systems to share lists of
available printers. Additionally, each system that runs the CUPS service
can potentially act as a print server. Whenever possible, the printer
sharing and print server capabilities of CUPS should be limited or
disabled. The following recommendations should demonstrate how to do
just that.
