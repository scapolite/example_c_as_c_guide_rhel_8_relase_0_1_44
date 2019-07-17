---
scapolite:
    class: rule
    version: '0.51'
id: service_rpcsvcgssd_disabled
id_namespace: org.ssgproject.RHEL-8
title: Disable Secure RPC Server Service (rpcsvcgssd)
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
      - system: http://scap.nist.gov/schema/ocil/2
        idref: ocil:ssg-service_rpcsvcgssd_disabled_ocil:questionnaire:1
        href: service_rpcsvcgssd_disabled.ocil.xml
---


## /rule

Disable Secure RPC Server Service (rpcsvcgssd)

## /rationale

Unnecessary
services should be disabled to decrease the attack surface of the
system.

## /description

The
rpcsvcgssd service manages RPCSEC GSS contexts required to secure
protocols that use RPC (most often Kerberos and NFS). The rpcsvcgssd
service is the server-side of RPCSEC GSS. If the system does not require
secure RPC then this service should be disabled. The `rpcsvcgssd`
service can be disabled with the following command:

``` 
$ sudo systemctl disable rpcsvcgssd.service
```
