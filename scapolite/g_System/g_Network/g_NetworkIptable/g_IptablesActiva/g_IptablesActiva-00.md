---
scapolite:
    class: group
    version: '0.51'
id: iptables_activation
id_namespace: org.ssgproject.RHEL-8
title: Inspect and Activate Default Rules
description: <see below>
contents:
  - class: rule_ref
    idref: service_ip6tables_enabled
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Verify ip6tables Enabled if Using IPv6
  - class: rule_ref
    idref: service_iptables_enabled
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Verify iptables Enabled
  - class: rule_ref
    idref: set_ip6tables_default_rule
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Set Default ip6tables Policy for Incoming Packets
---


## /description

View
the currently-enforced `iptables` rules by running the command:

``` 
$ sudo iptables -nL --line-numbers
```

The command is analogous for `ip6tables`.  
  
If the firewall does not appear to be active (i.e., no rules appear),
activate it and ensure that it starts at boot by issuing the following
commands (and analogously for `ip6tables`):

``` 
$ sudo service iptables restart
```

The default iptables rules are:

``` 
Chain INPUT (policy ACCEPT)
num  target     prot opt source       destination
1    ACCEPT     all  --  0.0.0.0/0    0.0.0.0/0    state RELATED,ESTABLISHED 
2    ACCEPT     icmp --  0.0.0.0/0    0.0.0.0/0
3    ACCEPT     all  --  0.0.0.0/0    0.0.0.0/0
4    ACCEPT     tcp  --  0.0.0.0/0    0.0.0.0/0    state NEW tcp dpt:22 
5    REJECT     all  --  0.0.0.0/0    0.0.0.0/0    reject-with icmp-host-prohibited 

Chain FORWARD (policy ACCEPT)
num  target     prot opt source       destination
1    REJECT     all  --  0.0.0.0/0    0.0.0.0/0    reject-with icmp-host-prohibited 

Chain OUTPUT (policy ACCEPT)
num  target     prot opt source       destination
```

The `ip6tables` default rules are essentially the same.
