---
scapolite:
    class: rule
    version: '0.51'
id: configure_firewalld_rate_limiting
id_namespace: org.ssgproject.RHEL-8
title: Configure firewalld To Rate Limit Connections
rule: <see below>
rationale: <see below>
description: <see below>
applicability:
  - system: org.scapolite.xccdf.applicability
    severity: medium
  - system: https://scap.nist.gov/schema/cpe/2.2
    cpes:
      - cpe:/a:machine
checks:
  - relative_id: '01'
    automations:
      - system: http://scap.nist.gov/schema/ocil/2
        idref: ocil:ssg-configure_firewalld_rate_limiting_ocil:questionnaire:1
        href: configure_firewalld_rate_limiting.ocil.xml
crossrefs:
  - system: http://iase.disa.mil/stigs/cci/Pages/index.aspx
    idref: CCI-002385
    relation: ''
  - system: http://nvlpubs.nist.gov/nistpubs/SpecialPublications/NIST.SP.800-53r4.pdf
    idref: SC-5
    relation: ''
  - system: http://iase.disa.mil/stigs/os/general/Pages/index.aspx
    idref: SRG-OS-000420-GPOS-00186
    relation: ''
  - system: http://iase.disa.mil/stigs/os/unix-linux/Pages/index.aspx
    idref: RHEL-08-040510
    relation: ''
  - system: org.scapolite.unknown
    idref: SRG-OS-000420-VMM-001690
    relation: ''
---


## /rule

Configure firewalld To Rate Limit Connections

## /rationale

DoS
is a condition when a resource is not available for legitimate users.
When this occurs, the organization either cannot accomplish its mission
or must operate at degraded capacity.  
  
This requirement addresses the configuration of the operating system to
mitigate the impact of DoS attacks that have occurred or are ongoing on
system availability. For each system, known and potential DoS attacks
must be identified and solutions for each type implemented. A variety of
technologies exist to limit or, in some cases, eliminate the effects of
DoS attacks (e.g., limiting processes or establishing memory
partitions). Employing increased capacity and bandwidth, combined with
service redundancy, may reduce the susceptibility to some DoS attacks.

## /description

Create
a direct firewall rule to protect against DoS attacks with the following
command:

``` 
$ sudo firewall-cmd --permanent --direct --add-rule ipv4 filter INPUT_direct 0 -p tcp -m limit --limit 25/minute --limit-burst 100  -j ACCEPT
```
