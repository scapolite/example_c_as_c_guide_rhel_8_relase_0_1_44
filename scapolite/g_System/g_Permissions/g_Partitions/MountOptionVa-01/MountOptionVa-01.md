---
scapolite:
    class: rule
    version: '0.51'
id: mount_option_var_tmp_nodev
id_namespace: org.ssgproject.RHEL-8
title: Add nodev Option to /var/tmp
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
    idref: 1.1.8
    relation: ''
---


## /rule

Add nodev Option to /var/tmp

## /rationale

The
only legitimate location for device files is the `/dev` directory
located on the root partition. The only exception to this is chroot
jails.

## /description

The
`nodev` mount option can be used to prevent device files from being
created in `/var/tmp`. Legitimate character and block devices should not
exist within temporary directories like `/var/tmp`. Add the `nodev`
option to the fourth column of `/etc/fstab` for the line which controls
mounting of `/var/tmp`.
