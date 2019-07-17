---
scapolite:
    class: rule
    version: '0.51'
id: httpd_configure_firewall
id_namespace: org.ssgproject.RHEL-8
title: Configure firewall to Allow Access to the Web Server
rule: <see below>
rationale: <see below>
description: <see below>
applicability:
  - system: org.scapolite.xccdf.applicability
    severity: low
checks:
  - relative_id: '01'
    automations:
      - system: http://scap.nist.gov/schema/ocil/2
        idref: ocil:ssg-httpd_configure_firewall_ocil:questionnaire:1
        href: httpd_configure_firewall.ocil.xml
---


## /rule

Configure firewall to Allow Access to the Web Server

## /rationale

Failure
to comply with DoD ports, protocols, and services (PPS) requirements can
result in compromise of enclave boundary protections and/or
functionality of the AIS.

## /description

By default, `iptables` blocks access to the ports used by the web
server. To configure `iptables` to allow port 80 traffic, one must edit
`/etc/sysconfig/iptables` and `/etc/sysconfig/ip6tables` (if IPv6 is in
use). Add the following line, ensuring that it appears before the final
LOG and DROP lines for the INPUT chain:

``` 
-A INPUT -m state --state NEW -p tcp --dport 80 -j ACCEPT
```

To configure `iptables` to allow port 443 traffic, one must edit
`/etc/sysconfig/iptables` and `/etc/sysconfig/ip6tables` (if IPv6 is in
use). Add the following line, ensuring that it appears before the final
LOG and DROP lines for the INPUT chain:

``` 
-A INPUT -m state --state NEW -p tcp --dport 443 -j ACCEPT
```
