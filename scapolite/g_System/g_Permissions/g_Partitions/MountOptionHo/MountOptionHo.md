---
scapolite:
    class: rule
    version: '0.51'
id: mount_option_home_nodev
id_namespace: org.ssgproject.RHEL-8
title: Add nodev Option to /home
rule: <see below>
rationale: <see below>
description: <see below>
applicability:
  - system: org.scapolite.xccdf.applicability
  - system: https://scap.nist.gov/schema/cpe/2.2
    cpes:
      - cpe:/a:machine
crossrefs:
  - system: org.scapolite.unknown
    idref: 1.1.14
    relation: ''
---


## /rule

Add nodev Option to /home

## /rationale

The
only legitimate location for device files is the `/dev` directory
located on the root partition. The only exception to this is chroot
jails.

## /description

The
`nodev` mount option can be used to prevent device files from being
created in `/home`. Legitimate character and block devices should exist
only in the `/dev` directory on the root partition or within chroot
jails built for system services. Add the `nodev` option to the fourth
column of `/etc/fstab` for the line which controls mounting of `/home`.
