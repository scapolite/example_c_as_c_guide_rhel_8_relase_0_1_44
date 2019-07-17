---
scapolite:
    class: group
    version: '0.51'
id: firewalld_activation
id_namespace: org.ssgproject.RHEL-8
title: Inspect and Activate Default firewalld Rules
description: <see below>
contents:
  - class: rule_ref
    idref: package_firewalld_installed
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Install firewalld
  - class: rule_ref
    idref: service_firewalld_enabled
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Verify firewalld Enabled
---


## /description

Firewalls
can be used to separate networks into different zones based on the level
of trust the user has decided to place on the devices and traffic within
that network. `NetworkManager` informs firewalld to which zone an
interface belongs. An interface\'s assigned zone can be changed by
`NetworkManager` or via the `firewall-config` tool.  
The zone settings in `/etc/firewalld/` are a range of preset settings
which can be quickly applied to a network interface. These are the zones
provided by firewalld sorted according to the default trust level of the
zones from untrusted to trusted:

-   `drop`  

    Any incoming network packets are dropped, there is no reply. Only
    outgoing network connections are possible.

-   `block`  

    Any incoming network connections are rejected with an
    `icmp-host-prohibited` message for IPv4 and `icmp6-adm-prohibited`
    for IPv6. Only network connections initiated from within the system
    are possible.

-   `public`  

    For use in public areas. You do not trust the other computers on the
    network to not harm your computer. Only selected incoming
    connections are accepted.

-   `external`  

    For use on external networks with masquerading enabled especially
    for routers. You do not trust the other computers on the network to
    not harm your computer. Only selected incoming connections are
    accepted.

-   `dmz`  

    For computers in your demilitarized zone that are
    publicly-accessible with limited access to your internal network.
    Only selected incoming connections are accepted.

-   `work`  

    For use in work areas. You mostly trust the other computers on
    networks to not harm your computer. Only selected incoming
    connections are accepted.

-   `home`  

    For use in home areas. You mostly trust the other computers on
    networks to not harm your computer. Only selected incoming
    connections are accepted.

-   `internal`  

    For use on internal networks. You mostly trust the other computers
    on the networks to not harm your computer. Only selected incoming
    connections are accepted.

-   `trusted`  

    All network connections are accepted.

  
It is possible to designate one of these zones to be the default zone.
When interface connections are added to `NetworkManager`, they are
assigned to the default zone. On installation, the default zone in
firewalld is set to be the public zone.  
To find out all the settings of a zone, for example the `public zone,`
enter the following command as root:

``` 
# firewall-cmd --zone=public --list-all
```

Example output of this command might look like the following:

``` 
# firewall-cmd --zone=public --list-all
public
  interfaces:
  services: mdns dhcpv6-client ssh
  ports:
  forward-ports:
  icmp-blocks: source-quench
```

To view the network zones currently active, enter the following command
as root:

``` 
# firewall-cmd --get-service
```

The following listing displays the result of this command on common Red
Hat Enterprise Linux 8 system:

``` 
# firewall-cmd --get-service
amanda-client bacula bacula-client dhcp dhcpv6 dhcpv6-client dns ftp
high-availability http https imaps ipp ipp-client ipsec kerberos kpasswd
ldap ldaps libvirt libvirt-tls mdns mountd ms-wbt mysql nfs ntp openvpn
pmcd pmproxy pmwebapi pmwebapis pop3s postgresql proxy-dhcp radius rpc-bind
samba samba-client smtp ssh telnet tftp tftp-client transmission-client
vnc-server wbem-https
```

Finally to view the network zones that will be active after the next
firewalld service reload, enter the following command as root:

``` 
# firewall-cmd --get-service --permanent
```
