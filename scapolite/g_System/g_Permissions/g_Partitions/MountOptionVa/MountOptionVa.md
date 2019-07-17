---
scapolite:
    class: rule
    version: '0.51'
id: mount_option_var_tmp_nosuid
id_namespace: org.ssgproject.RHEL-8
title: Add nosuid Option to /var/tmp
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
    idref: 1.1.9
    relation: ''
---


## /rule

Add nosuid Option to /var/tmp

## /rationale

The
presence of SUID and SGID executables should be tightly controlled.
Users should not be able to execute SUID or SGID binaries from temporary
storage partitions.

## /description

The
`nosuid` mount option can be used to prevent execution of setuid
programs in `/var/tmp`. The SUID and SGID permissions should not be
required in these world-writable directories. Add the `nosuid` option to
the fourth column of `/etc/fstab` for the line which controls mounting
of `/var/tmp`.
