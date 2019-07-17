---
scapolite:
    class: rule
    version: '0.51'
id: firewalld_sshd_port_enabled
id_namespace: org.ssgproject.RHEL-8
title: Enable SSH Server firewalld Firewall Exception
rule: <see below>
rationale: <see below>
description: <see below>
applicability:
  - system: org.scapolite.xccdf.applicability
    severity: medium
  - system: https://scap.nist.gov/schema/cpe/2.2
    cpes:
      - cpe:/a:machine
implementations:
  - relative_id: '01'
    title: Automated fix
    automations:
      - system: urn:xccdf:fix:script:ansible
        href: firewalld_sshd_port_enabled.ansible
        complexity: low
        disruption: low
checks:
  - relative_id: '01'
    automations:
      - system: http://oval.mitre.org/XMLSchema/oval-definitions-5
        idref: oval:ssg-firewalld_sshd_port_enabled:def:1
        href: firewalld_sshd_port_enabled.oval.xml
        exports:
          - value_id_namespace: org.ssgproject.RHEL-8
            value_idref: sshd_listening_port
            variable_idref: oval:ssg-sshd_listening_port:var:1
  - relative_id: '02'
    automations:
      - system: http://scap.nist.gov/schema/ocil/2
        idref: ocil:ssg-firewalld_sshd_port_enabled_ocil:questionnaire:1
        href: firewalld_sshd_port_enabled.ocil.xml
crossrefs:
  - system: https://nvd.nist.gov/cce/index.cfm
    idref: CCE-80820-4
    relation: ''
  - system: http://nvlpubs.nist.gov/nistpubs/SpecialPublications/NIST.SP.800-171.pdf
    idref: 3.1.12
    relation: ''
  - system: http://nvlpubs.nist.gov/nistpubs/SpecialPublications/NIST.SP.800-53r4.pdf
    idref: AC-17(a)
    relation: ''
  - system: https://nvd.nist.gov/cce/index.cfm
    idref: CCE-80820-4
    relation: ''
---


## /rule

Enable SSH Server firewalld Firewall Exception

## /rationale

If
inbound SSH connections are expected, adding a firewall rule exception
will allow remote access through the SSH port.

## /description

By
default, inbound connections to SSH\'s port are allowed. If the SSH
server is being used but denied by the firewall, this exception should
be added to the firewall configuration.  
  
To configure `firewalld` to allow access, run the following command(s):
`firewall-cmd --permanent --add-service=ssh`
