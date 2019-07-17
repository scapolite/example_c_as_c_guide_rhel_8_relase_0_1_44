---
scapolite:
    class: rule
    version: '0.51'
id: iptables_sshd_disabled
id_namespace: org.ssgproject.RHEL-8
title: Remove SSH Server iptables Firewall exception (Unusual)
rule: <see below>
rationale: <see below>
description: <see below>
applicability:
  - system: org.scapolite.xccdf.applicability
  - system: https://scap.nist.gov/schema/cpe/2.2
    cpes:
      - cpe:/a:machine
---


## /rule

Remove SSH Server iptables Firewall exception (Unusual)

## /rationale

If
inbound SSH connections are not expected, disallowing access to the SSH
port will avoid possible exploitation of the port by an attacker.

## /description

By
default, inbound connections to SSH\'s port are allowed. If the SSH
server is not being used, this exception should be removed from the
firewall configuration.  
  
Edit the files `/etc/sysconfig/iptables` and `/etc/sysconfig/ip6tables`
(if IPv6 is in use). In each file, locate and delete the line:

``` 
-A INPUT -m state --state NEW -m tcp -p tcp --dport 22 -j ACCEPT
```

This is unusual, as SSH is a common method for encrypted and
authenticated remote access.
