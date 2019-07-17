---
scapolite:
    class: group
    version: '0.51'
id: sshd_strengthen_firewall
id_namespace: org.ssgproject.RHEL-8
title: Strengthen Firewall Configuration if Possible
description: <see below>
contents: []
---


## /description

If
the SSH server is expected to only receive connections from the local
network, then strengthen the default firewall rule for the SSH service
to only accept connections from the appropriate network segment(s).  
  
Determine an appropriate network block, `netwk`, network mask, `mask`,
and network protocol, `ip_protocol`, representing the systems on your
network which will be allowed to access this SSH server.  
  
Run the following command:

``` 
firewall-cmd --permanent --add-rich-rule='rule family="ip_protocol" source address="netwk/mask" service name="ssh" accept'
```
