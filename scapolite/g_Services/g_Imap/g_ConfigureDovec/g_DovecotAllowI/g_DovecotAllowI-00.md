---
scapolite:
    class: group
    version: '0.51'
id: dovecot_allow_imap_access
id_namespace: org.ssgproject.RHEL-8
title: Allow IMAP Clients to Access the Server
description: <see below>
contents: []
---


## /description

The default iptables configuration does not allow inbound access to any
services. This modification will allow remote hosts to initiate
connections to the IMAP daemon, while keeping all other ports on the
server in their default protected state. To configure `iptables` to
allow port 143 traffic, one must edit `/etc/sysconfig/iptables` and
`/etc/sysconfig/ip6tables` (if IPv6 is in use). Add the following line,
ensuring that it appears before the final LOG and DROP lines for the
INPUT chain:

``` 
-A INPUT -m state --state NEW -p tcp --dport 143 -j ACCEPT
```
