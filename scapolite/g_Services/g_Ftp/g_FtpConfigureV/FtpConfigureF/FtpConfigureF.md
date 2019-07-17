---
scapolite:
    class: rule
    version: '0.51'
id: ftp_configure_firewall
id_namespace: org.ssgproject.RHEL-8
title: Configure Firewalls to Protect the FTP Server
rule: <see below>
rationale: <see below>
description: <see below>
applicability:
  - system: org.scapolite.xccdf.applicability
---


## /rule

Configure Firewalls to Protect the FTP Server

## /rationale

These
settings configure the firewall to allow connections to an FTP server.
The first line allows initial connections to the FTP server port. FTP is
an older protocol which is not very compatible with firewalls. During
the initial FTP dialogue, the client and server negotiate an arbitrary
port to be used for data transfer. The `ip_conntrack_ftp` module is used
by iptables to listen to that dialogue and allow connections to the data
ports which FTP negotiates. This allows an FTP server to operate on a
system which is running a firewall.

## /description

By default, `iptables` blocks access to the ports used by the web
server. To configure `iptables` to allow port 21 traffic, one must edit
`/etc/sysconfig/iptables` and `/etc/sysconfig/ip6tables` (if IPv6 is in
use). Add the following line, ensuring that it appears before the final
LOG and DROP lines for the INPUT chain:

``` 
-A INPUT -m state --state NEW -p tcp --dport 21 -j ACCEPT
```

Edit the file `/etc/sysconfig/iptables-config`. Ensure that the
space-separated list of modules contains the FTP connection tracking
module:

``` 
IPTABLES_MODULES="ip_conntrack_ftp"
```
