---
scapolite:
    class: group
    version: '0.51'
id: network_disable_unused_interfaces
id_namespace: org.ssgproject.RHEL-8
title: Disable Unused Interfaces
description: <see below>
contents: []
---


## /description

Network
interfaces expand the attack surface of the system. Unused interfaces
are not monitored or controlled, and should be disabled.  
  
If the system does not require network communications but still needs to
use the loopback interface, remove all files of the form
`ifcfg-interface` except for `ifcfg-lo` from
`/etc/sysconfig/network-scripts`:

``` 
$ sudo rm /etc/sysconfig/network-scripts/ifcfg-interface
```

If the system is a standalone machine with no need for network access or
even communication over the loopback device, then disable this service.
The `network` service can be disabled with the following command:

``` 
$ sudo systemctl disable network.service
```
