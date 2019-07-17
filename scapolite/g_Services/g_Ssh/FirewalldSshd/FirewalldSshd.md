---
scapolite:
    class: rule
    version: '0.51'
id: firewalld_sshd_disabled
id_namespace: org.ssgproject.RHEL-8
title: Remove SSH Server firewalld Firewall exception (Unusual)
rule: <see below>
rationale: <see below>
description: <see below>
applicability:
  - system: org.scapolite.xccdf.applicability
  - system: https://scap.nist.gov/schema/cpe/2.2
    cpes:
      - cpe:/a:machine
checks:
  - relative_id: '01'
    automations:
      - system: http://oval.mitre.org/XMLSchema/oval-definitions-5
        idref: oval:ssg-firewalld_sshd_disabled:def:1
        href: firewalld_sshd_disabled.oval.xml
crossrefs:
  - system: http://nvlpubs.nist.gov/nistpubs/SpecialPublications/NIST.SP.800-171.pdf
    idref: 3.1.12
    relation: ''
---


## /rule

Remove SSH Server firewalld Firewall exception (Unusual)

## /rationale

If
inbound SSH connections are not expected, disallowing access to the SSH
port will avoid possible exploitation of the port by an attacker.

## /description

By
default, inbound connections to SSH\'s port are allowed. If the SSH
server is not being used, this exception should be removed from the
firewall configuration.  
  
To configure `firewalld` to prevent access, run the following
command(s): `firewall-cmd --permanent --remove-service=ssh`
