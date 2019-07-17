---
scapolite:
    class: rule
    version: '0.51'
id: mount_option_var_tmp_noexec
id_namespace: org.ssgproject.RHEL-8
title: Add noexec Option to /var/tmp
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
    idref: 1.1.10
    relation: ''
---


## /rule

Add noexec Option to /var/tmp

## /rationale

Allowing
users to execute binaries from world-writable directories such as
`/var/tmp` should never be necessary in normal operation and can expose
the system to potential compromise.

## /description

The
`noexec` mount option can be used to prevent binaries from being
executed out of `/var/tmp`. Add the `noexec` option to the fourth column
of `/etc/fstab` for the line which controls mounting of `/var/tmp`.
