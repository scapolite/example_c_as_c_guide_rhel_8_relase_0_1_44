---
scapolite:
    class: rule
    version: '0.51'
id: service_sshd_disabled
id_namespace: org.ssgproject.RHEL-8
title: Disable SSH Server If Possible (Unusual)
rule: <see below>
description: <see below>
applicability:
  - system: org.scapolite.xccdf.applicability
  - system: https://scap.nist.gov/schema/cpe/2.2
    cpes:
      - cpe:/a:machine
implementations:
  - relative_id: '01'
    title: Automated fix
    automations:
      - system: urn:xccdf:fix:script:sh
        href: service_sshd_disabled.sh
        complexity: low
        disruption: low
  - relative_id: '02'
    title: Automated fix
    automations:
      - system: urn:xccdf:fix:script:ansible
        href: service_sshd_disabled.ansible
        complexity: low
        disruption: low
checks:
  - relative_id: '01'
    automations:
      - system: http://oval.mitre.org/XMLSchema/oval-definitions-5
        idref: oval:ssg-service_sshd_disabled:def:1
        href: service_sshd_disabled.oval.xml
---


## /rule

Disable SSH Server If Possible (Unusual)

## /description

The
SSH server service, sshd, is commonly needed. However, if it can be
disabled, do so. The `sshd` service can be disabled with the following
command:

``` 
$ sudo systemctl disable sshd.service
```

This is unusual, as SSH is a common method for encrypted and
authenticated remote access.
