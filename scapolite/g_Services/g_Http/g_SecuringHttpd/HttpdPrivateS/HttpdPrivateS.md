---
scapolite:
    class: rule
    version: '0.51'
id: httpd_private_server_on_separate_subnet
id_namespace: org.ssgproject.RHEL-8
title: |
    A private web server must be located on a separate controlled access
    subnet
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
        idref: ocil:ssg-httpd_private_server_on_separate_subnet_ocil:questionnaire:1
        href: httpd_private_server_on_separate_subnet.ocil.xml
crossrefs:
  - system: http://iase.disa.mil/stigs/os/unix-linux/Pages/index.aspx
    idref: RHEL-08-WA070
    relation: ''
---


## /rule

A private web server must be located on a separate controlled access
subnet

## /rationale

Insider
threat may be accidental or intentional but, in either case, can cause a
disruption in service of the web server. To protect the private web
server from these threats, it must be located on a separate controlled
access subnet and must not be part of the public DMZ that houses the
public web servers. it also cannot be located inside the enclave as part
of the local general population LAN.

## /description

Private
web servers, which host sites that serve controlled access data, must be
protected from outside threats in addition to insider threats. Isolate
the private web server from the public DMZ and separate it from the
internal general population LAN.
