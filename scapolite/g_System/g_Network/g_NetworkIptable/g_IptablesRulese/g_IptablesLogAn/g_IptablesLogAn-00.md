---
scapolite:
    class: group
    version: '0.51'
id: iptables_log_and_drop_suspicious
id_namespace: org.ssgproject.RHEL-8
title: Log and Drop Packets with Suspicious Source Addresses
description: <see below>
contents: []
---


## /description

Packets
with non-routable source addresses should be rejected, as they may
indicate spoofing. Because the modified policy will reject non-matching
packets, you only need to add these rules if you are interested in also
logging these spoofing or suspicious attempts before they are dropped.
If you do choose to log various suspicious traffic, add identical rules
with a target of `DROP` after each *LOG*. To log and then drop these
IPv4 packets, insert the following rules in `/etc/sysconfig/iptables`
(excepting any that are intentionally used):

``` 
-A INPUT -s 10.0.0.0/8 -j LOG --log-prefix "IP DROP SPOOF A: "
-A INPUT -s 172.16.0.0/12 -j LOG --log-prefix "IP DROP SPOOF B: "
-A INPUT -s 192.168.0.0/16 -j LOG --log-prefix "IP DROP SPOOF C: "
-A INPUT -s 224.0.0.0/4 -j LOG --log-prefix "IP DROP MULTICAST D: "
-A INPUT -s 240.0.0.0/5 -j LOG --log-prefix "IP DROP SPOOF E: "
-A INPUT -d 127.0.0.0/8 -j LOG --log-prefix "IP DROP LOOPBACK: "
```

Similarly, you might wish to log packets containing some IPv6 reserved
addresses if they are not expected on your network:

``` 
-A INPUT -i eth0 -s ::1 -j LOG --log-prefix "IPv6 DROP LOOPBACK: "
-A INPUT -s 2002:E000::/20 -j LOG --log-prefix "IPv6 6to4 TRAFFIC: "
-A INPUT -s 2002:7F00::/24 -j LOG --log-prefix "IPv6 6to4 TRAFFIC: "
-A INPUT -s 2002:0000::/24 -j LOG --log-prefix "IPv6 6to4 TRAFFIC: "
-A INPUT -s 2002:FF00::/24 -j LOG --log-prefix "IPv6 6to4 TRAFFIC: "
-A INPUT -s 2002:0A00::/24 -j LOG --log-prefix "IPv6 6to4 TRAFFIC: "
-A INPUT -s 2002:AC10::/28 -j LOG --log-prefix "IPv6 6to4 TRAFFIC: "
-A INPUT -s 2002:C0A8::/32 -j LOG --log-prefix "IPv6 6to4 TRAFFIC: "
```

If you are not expecting to see site-local multicast or auto-tunneled
traffic, you can log those:

``` 
-A INPUT -s FF05::/16 -j LOG --log-prefix "IPv6 SITE-LOCAL MULTICAST: "
-A INPUT -s ::0.0.0.0/96 -j LOG --log-prefix "IPv4 COMPATIBLE IPv6 ADDR: "
```

If you wish to block multicasts to all link-local nodes (e.g. if you are
not using router auto-configuration and do not plan to have any services
that multicast to the entire local network), you can block the
link-local all-nodes multicast address (before accepting incoming
ICMPv6):

``` 
-A INPUT -d FF02::1 -j LOG --log-prefix "Link-local All-Nodes Multicast: "
```

However, if you\'re going to allow IPv4 compatible IPv6 addresses (of
the form ::0.0.0.0/96), you should then consider logging the
non-routable IPv4-compatible addresses:

``` 
-A INPUT -s ::0.0.0.0/104 -j LOG --log-prefix "IP NON-ROUTABLE ADDR: "
-A INPUT -s ::127.0.0.0/104 -j LOG --log-prefix "IP DROP LOOPBACK: "
-A INPUT -s ::224.0.0.0.0/100 -j LOG --log-prefix "IP DROP MULTICAST D: "
-A INPUT -s ::255.0.0.0/104 -j LOG --log-prefix "IP BROADCAST: "
```

If you are not expecting to see any IPv4 (or IPv4-compatible) traffic on
your network, consider logging it before it gets dropped:

``` 
-A INPUT -s ::FFFF:0.0.0.0/96 -j LOG --log-prefix "IPv4 MAPPED IPv6 ADDR: "
-A INPUT -s 2002::/16 -j LOG --log-prefix "IPv6 6to4 ADDR: "
```

The following rule will log all traffic originating from a site-local
address, which is deprecated address space:

``` 
-A INPUT -s FEC0::/10 -j LOG --log-prefix "SITE-LOCAL ADDRESS TRAFFIC: "
```
