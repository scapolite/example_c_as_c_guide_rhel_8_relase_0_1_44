---
scapolite:
    class: group
    version: '0.51'
id: principle-separate-servers
id_namespace: org.ssgproject.RHEL-8
title: Run Different Network Services on Separate Systems
description: <see below>
contents: []
---


## /description

Whenever
possible, a server should be dedicated to serving exactly one network
service. This limits the number of other services that can be
compromised in the event that an attacker is able to successfully
exploit a software flaw in one network service.
