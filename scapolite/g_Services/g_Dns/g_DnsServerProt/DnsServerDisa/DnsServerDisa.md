---
scapolite:
    class: rule
    version: '0.51'
id: dns_server_disable_dynamic_updates
id_namespace: org.ssgproject.RHEL-8
title: Disable Dynamic Updates
rule: <see below>
rationale: <see below>
description: <see below>
applicability:
  - system: org.scapolite.xccdf.applicability
---


## /rule

Disable Dynamic Updates

## /rationale

Dynamic
updates allow remote servers to add, delete, or modify any entries in
your zone file. Therefore, they should be considered highly risky, and
disabled unless there is a very good reason for their use. If dynamic
updates must be allowed, IP-based ACLs are insufficient protection,
since they are easily spoofed. Instead, use TSIG keys (see the previous
section for an example), and consider using the update-policy directive
to restrict changes to only the precise type of change needed.

## /description

Is
there a mission-critical reason to enable the risky dynamic update
functionality? If not, edit `/etc/named.conf`. For each zone
specification, correct the following directive if necessary:

``` 
zone "example.com " IN {
  allow-update { none; };
  ...
};
```
