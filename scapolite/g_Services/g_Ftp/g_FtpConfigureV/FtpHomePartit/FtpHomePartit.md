---
scapolite:
    class: rule
    version: '0.51'
id: ftp_home_partition
id_namespace: org.ssgproject.RHEL-8
title: Place the FTP Home Directory on its Own Partition
rule: <see below>
rationale: <see below>
description: <see below>
applicability:
  - system: org.scapolite.xccdf.applicability
---


## /rule

Place the FTP Home Directory on its Own Partition

## /rationale

If
there is a mission-critical reason for anonymous users to upload files,
precautions must be taken to prevent these users from filling a disk
used by other services.

## /description

By
default, the anonymous FTP root is the home directory of the FTP user
account. The df command can be used to verify that this directory is on
its own partition.
