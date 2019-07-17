---
scapolite:
    class: group
    version: '0.51'
id: network_ipv6_limit_requests
id_namespace: org.ssgproject.RHEL-8
title: Limit Network-Transmitted Configuration if Using Static IPv6 Addresses
description: <see below>
contents: []
---


## /description

To
limit the configuration information requested from other systems and
accepted from the network on a system that uses statically-configured
IPv6 addresses, add the following lines to `/etc/sysctl.conf`:

``` 
net.ipv6.conf.default.router_solicitations = 0
net.ipv6.conf.default.accept_ra_rtr_pref = 0
net.ipv6.conf.default.accept_ra_pinfo = 0
net.ipv6.conf.default.accept_ra_defrtr = 0
net.ipv6.conf.default.autoconf = 0
net.ipv6.conf.default.dad_transmits = 0
net.ipv6.conf.default.max_addresses = 1
```

The `router_solicitations` setting determines how many router
solicitations are sent when bringing up the interface. If addresses are
statically assigned, there is no need to send any solicitations.  
  
The `accept_ra_pinfo` setting controls whether the system will accept
prefix info from the router.  
  
The `accept_ra_defrtr` setting controls whether the system will accept
Hop Limit settings from a router advertisement. Setting it to 0 prevents
a router from changing your default IPv6 Hop Limit for outgoing
packets.  
  
The `autoconf` setting controls whether router advertisements can cause
the system to assign a global unicast address to an interface.  
  
The `dad_transmits` setting determines how many neighbor solicitations
to send out per address (global and link-local) when bringing up an
interface to ensure the desired address is unique on the network.  
  
The `max_addresses` setting determines how many global unicast IPv6
addresses can be assigned to each interface. The default is 16, but it
should be set to exactly the number of statically configured global
addresses required.
