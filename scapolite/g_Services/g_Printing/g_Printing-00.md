---
scapolite:
    class: group
    version: '0.51'
id: printing
id_namespace: org.ssgproject.RHEL-8
title: Print Support
description: <see below>
contents:
  - class: group_ref
    idref: configure_printing
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Configure the CUPS Service if Necessary
  - class: rule_ref
    idref: service_cups_disabled
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Disable the CUPS Service
---


## /description

The
Common Unix Printing System (CUPS) service provides both local and
network printing support. A system running the CUPS service can accept
print jobs from other systems, process them, and send them to the
appropriate printer. It also provides an interface for remote
administration through a web browser. The CUPS service is installed and
activated by default. The project homepage and more detailed
documentation are available at <http://www.cups.org>.
