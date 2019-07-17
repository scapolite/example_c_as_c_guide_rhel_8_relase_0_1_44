---
scapolite:
    class: group
    version: '0.51'
id: iptables_icmp_disabled
id_namespace: org.ssgproject.RHEL-8
title: Restrict ICMP Message Types
description: <see below>
contents: []
---


## /description

In
`/etc/sysconfig/iptables`, the accepted ICMP messages types can be
restricted. To accept only ICMP echo reply, destination unreachable, and
time exceeded messages, remove the line:  

``` 
-A INPUT -p icmp --icmp-type any -j ACCEPT
```

and insert the lines:

``` 
-A INPUT -p icmp --icmp-type echo-reply -j ACCEPT
-A INPUT -p icmp --icmp-type destination-unreachable -j ACCEPT
-A INPUT -p icmp --icmp-type time-exceeded -j ACCEPT
```

To allow the system to respond to pings, also insert the following line:

``` 
-A INPUT -p icmp --icmp-type echo-request -j ACCEPT
```

Ping responses can also be limited to certain networks or hosts by using
the -s option in the previous rule. Because IPv6 depends so heavily on
ICMPv6, it is preferable to deny the ICMPv6 packets you know you don\'t
need (e.g. ping requests) in `/etc/sysconfig/ip6tables`, while letting
everything else through:

``` 
-A INPUT -p icmpv6 --icmpv6-type echo-request -j DROP
```

If you are going to statically configure the system\'s address, it
should ignore Router Advertisements which could add another IPv6 address
to the interface or alter important network settings:

``` 
-A INPUT -p icmpv6 --icmpv6-type router-advertisement -j DROP
```

Restricting ICMPv6 message types in `/etc/sysconfig/ip6tables` is not
recommended because the operation of IPv6 depends heavily on ICMPv6.
Thus, great care must be taken if any other ICMPv6 types are blocked.
