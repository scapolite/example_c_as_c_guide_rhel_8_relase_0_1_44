---
scapolite:
    class: rule
    version: '0.51'
id: dhcp_client_restrict_options
id_namespace: org.ssgproject.RHEL-8
title: Minimize the DHCP-Configured Options
rule: <see below>
rationale: <see below>
description: <see below>
applicability:
  - system: org.scapolite.xccdf.applicability
---


## /rule

Minimize the DHCP-Configured Options

## /rationale

By
default, the DHCP client program, dhclient, requests and applies ten
configuration options (in addition to the IP address) from the DHCP
server. subnet-mask, broadcast-address, time-offset, routers,
domain-name, domain-name-servers, host-name, nis-domain, nis-servers,
and ntp-servers. Many of the options requested and applied by dhclient
may be the same for every system on a network. It is recommended that
almost all configuration options be assigned statically, and only
options which must vary on a host-by-host basis be assigned via DHCP.
This limits the damage which can be done by a rogue DHCP server. If
appropriate for your site, it is also possible to supersede the
host-name directive in `/etc/dhcp/dhclient.conf`, establishing a static
hostname for the system. However, dhclient does not use the host name
option provided by the DHCP server (instead using the value provided by
a reverse DNS lookup).

## /description

Create
the file `/etc/dhcp/dhclient.conf`, and add an appropriate setting for
each of the ten configuration settings which can be obtained via DHCP.
For each setting, do one of the following:  
If the setting should *not* be configured remotely by the DHCP server,
select an appropriate static value, and add the line:

``` 
supersede setting value;
```

If the setting should be configured remotely by the DHCP server, add the
lines:

``` 
request setting;
require setting;
```

For example, suppose the DHCP server should provide only the IP address
itself and the subnet mask. Then the entire file should look like:

``` 
supersede domain-name "example.com";
supersede domain-name-servers 192.168.1.2;
supersede nis-domain "";
supersede nis-servers "";
supersede ntp-servers "ntp.example.com ";
supersede routers 192.168.1.1;
supersede time-offset -18000;
request subnet-mask;
require subnet-mask;
```
