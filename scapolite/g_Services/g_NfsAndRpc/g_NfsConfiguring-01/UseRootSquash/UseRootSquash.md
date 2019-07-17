---
scapolite:
    class: rule
    version: '0.51'
id: use_root_squashing_all_exports
id_namespace: org.ssgproject.RHEL-8
title: Use Root-Squashing on All Exports
rule: <see below>
rationale: <see below>
description: <see below>
applicability:
  - system: org.scapolite.xccdf.applicability
---


## /rule

Use Root-Squashing on All Exports

## /rationale

If
the NFS server allows root access to local file systems from remote
hosts, this access could be used to compromise the system.

## /description

If
a filesystem is exported using root squashing, requests from root on the
client are considered to be unprivileged (mapped to a user such as
nobody). This provides some mild protection against remote abuse of an
NFS server. Root squashing is enabled by default, and should not be
disabled.  
  
Ensure that no line in `/etc/exports` contains the option
`no_root_squash`.
