---
scapolite:
    class: group
    version: '0.51'
id: nfs_configuring_servers
id_namespace: org.ssgproject.RHEL-8
title: Configure NFS Servers
description: <see below>
contents:
  - class: group_ref
    idref: use_acl_enforce_auth_restrictions
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Use Access Lists to Enforce Authorization Restrictions
  - class: group_ref
    idref: configure_exports_restrictively
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Configure the Exports File Restrictively
  - class: group_ref
    idref: export_filesystems_read_only
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Export Filesystems Read-Only if Possible
  - class: rule_ref
    idref: use_root_squashing_all_exports
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Use Root-Squashing on All Exports
  - class: rule_ref
    idref: no_insecure_locks_exports
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Ensure Insecure File Locking is Not Allowed
  - class: rule_ref
    idref: restrict_nfs_clients_to_privileged_ports
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Restrict NFS Clients to Privileged Ports
  - class: rule_ref
    idref: use_kerberos_security_all_exports
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Use Kerberos Security on All Exports
  - class: rule_ref
    idref: no_all_squash_exports
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Ensure All-Squashing Disabled On All Exports
---


## /description

The
steps in this section are appropriate for systems which operate as NFS
servers.
