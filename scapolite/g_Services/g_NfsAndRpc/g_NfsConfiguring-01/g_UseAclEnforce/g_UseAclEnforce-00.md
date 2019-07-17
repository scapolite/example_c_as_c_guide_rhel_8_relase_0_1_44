---
scapolite:
    class: group
    version: '0.51'
id: use_acl_enforce_auth_restrictions
id_namespace: org.ssgproject.RHEL-8
title: Use Access Lists to Enforce Authorization Restrictions
description: <see below>
contents: []
---


## /description

When
configuring NFS exports, ensure that each export line in `/etc/exports`
contains a list of hosts which are allowed to access that export. If no
hosts are specified on an export line, then that export is available to
any remote host which requests it. All lines of the exports file should
specify the hosts (or subnets, if needed) which are allowed to access
the exported directory, so that unknown or remote hosts will be
denied.  
  
Authorized hosts can be specified in several different formats:

-   Name or alias that is recognized by the resolver
-   Fully qualified domain name
-   IP address
-   IP subnets in the format `address/netmask` or `address/CIDR`
