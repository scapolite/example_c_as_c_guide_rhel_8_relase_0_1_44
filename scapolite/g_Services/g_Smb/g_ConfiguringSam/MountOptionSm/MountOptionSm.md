---
scapolite:
    class: rule
    version: '0.51'
id: mount_option_smb_client_signing
id_namespace: org.ssgproject.RHEL-8
title: Require Client SMB Packet Signing, if using mount.cifs
rule: <see below>
rationale: <see below>
description: <see below>
applicability:
  - system: org.scapolite.xccdf.applicability
checks:
  - relative_id: '01'
    automations:
      - system: http://oval.mitre.org/XMLSchema/oval-definitions-5
        idref: oval:ssg-mount_option_smb_client_signing:def:1
        href: mount_option_smb_client_signing.oval.xml
  - relative_id: '02'
    automations:
      - system: http://scap.nist.gov/schema/ocil/2
        idref: ocil:ssg-mount_option_smb_client_signing_ocil:questionnaire:1
        href: mount_option_smb_client_signing.ocil.xml
---


## /rule

Require Client SMB Packet Signing, if using mount.cifs

## /rationale

Packet
signing can prevent man-in-the-middle attacks which modify SMB packets
in transit.

## /description

Require
packet signing of clients who mount Samba shares using the `mount.cifs`
program (e.g., those who specify shares in `/etc/fstab`). To do so,
ensure signing options (either `sec=krb5i` or `sec=ntlmv2i`) are used.  
  
See the `mount.cifs(8)` man page for more information. A Samba client
should only communicate with servers who can support SMB packet signing.
