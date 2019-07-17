---
scapolite:
    class: group
    version: '0.51'
id: daemon_umask
id_namespace: org.ssgproject.RHEL-8
title: Daemon Umask
description: <see below>
values:
  - id: var_umask_for_daemons
    id_namespace: org.ssgproject.RHEL-8
    title: daemon umask
    description: |
        Enter
        umask for daemons
    type: string
    default: '022'
    definitions:
      - selector: '022'
        value: 22
      - selector: '027'
        value: 27
contents:
  - class: rule_ref
    idref: umask_for_daemons
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Set Daemon Umask
---


## /description

The
umask is a per-process setting which limits the default permissions for
creation of new files and directories. The system includes
initialization scripts which set the default umask for system daemons.
