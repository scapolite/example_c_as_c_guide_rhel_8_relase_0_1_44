---
scapolite:
    class: rule
    version: '0.51'
id: require_smb_client_signing
id_namespace: org.ssgproject.RHEL-8
title: Require Client SMB Packet Signing, if using smbclient
rule: <see below>
rationale: <see below>
description: <see below>
applicability:
  - system: org.scapolite.xccdf.applicability
implementations:
  - relative_id: '01'
    title: Automated fix
    automations:
      - system: urn:xccdf:fix:script:sh
        href: require_smb_client_signing.sh
  - relative_id: '02'
    title: Automated fix
    automations:
      - system: urn:xccdf:fix:script:ansible
        href: require_smb_client_signing.ansible
        complexity: low
        disruption: medium
checks:
  - relative_id: '01'
    automations:
      - system: http://oval.mitre.org/XMLSchema/oval-definitions-5
        idref: oval:ssg-require_smb_client_signing:def:1
        href: require_smb_client_signing.oval.xml
  - relative_id: '02'
    automations:
      - system: http://scap.nist.gov/schema/ocil/2
        idref: ocil:ssg-require_smb_client_signing_ocil:questionnaire:1
        href: require_smb_client_signing.ocil.xml
---


## /rule

Require Client SMB Packet Signing, if using smbclient

## /rationale

Packet
signing can prevent man-in-the-middle attacks which modify SMB packets
in transit.

## /description

To
require samba clients running `smbclient` to use packet signing, add the
following to the `[global]` section of the Samba configuration file,
`/etc/samba/smb.conf`:

``` 
client signing = mandatory
```

Requiring samba clients such as `smbclient` to use packet signing
ensures they can only communicate with servers that support packet
signing.
