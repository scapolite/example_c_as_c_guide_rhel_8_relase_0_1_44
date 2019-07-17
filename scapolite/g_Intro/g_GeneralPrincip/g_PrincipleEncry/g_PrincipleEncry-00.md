---
scapolite:
    class: group
    version: '0.51'
id: principle-encrypt-transmitted-data
id_namespace: org.ssgproject.RHEL-8
title: Encrypt Transmitted Data Whenever Possible
description: <see below>
contents: []
---


## /description

Data
transmitted over a network, whether wired or wireless, is susceptible to
passive monitoring. Whenever practical solutions for encrypting such
data exist, they should be applied. Even if data is expected to be
transmitted only over a local network, it should still be encrypted.
Encrypting authentication data, such as passwords, is particularly
important. Networks of Red Hat Enterprise Linux 8 machines can and
should be configured so that no unencrypted authentication data is ever
transmitted between machines.
