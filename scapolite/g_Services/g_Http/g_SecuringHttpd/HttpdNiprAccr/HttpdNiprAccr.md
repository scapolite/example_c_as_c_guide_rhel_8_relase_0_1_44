---
scapolite:
    class: rule
    version: '0.51'
id: httpd_nipr_accredited_dmz
id_namespace: org.ssgproject.RHEL-8
title: |
    A public web server, if hosted on the NIPRNet, must be isolated in an
    accredited DoD DMZ extension
rule: <see below>
rationale: <see below>
description: <see below>
applicability:
  - system: org.scapolite.xccdf.applicability
    severity: medium
checks:
  - relative_id: '01'
    automations:
      - system: http://scap.nist.gov/schema/ocil/2
        idref: ocil:ssg-httpd_nipr_accredited_dmz_ocil:questionnaire:1
        href: httpd_nipr_accredited_dmz.ocil.xml
crossrefs:
  - system: http://iase.disa.mil/stigs/os/unix-linux/Pages/index.aspx
    idref: RHEL-08-WA060
    relation: ''
---


## /rule

A public web server, if hosted on the NIPRNet, must be isolated in an
accredited DoD DMZ extension

## /rationale

Public
web servers are by nature more vulnerabile to attack from publically
based sources, such as the public Internet. Once compromised, a public
server might be used as a base for further attack on private resources,
unless additional layers of protection are implemented. Public web
servers must be located in a DoD DMZ Extension, if hosted on the
NIPRNet, with carefully controlled access. Failure to isolate resources
in this way increase risk that private assets are exposed to attacks
from public sources. An improperly located public web server is a
potential threat to the entire network.

## /description

To
minimize exposure of private assets to unnecesarry risk by attackers,
public web servers must be isolated from internal systems. Logically
relocate public web servers to be isolated from internal systems. In
addition, ensure the public web server does not have trusted connections
with assets outside the confines of the demilitarizez done (DMZ) other
than application and/or database servers that are a part of the same
system as the web server.
