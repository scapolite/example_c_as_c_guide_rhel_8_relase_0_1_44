---
scapolite:
    class: group
    version: '0.51'
id: principle-minimize-software
id_namespace: org.ssgproject.RHEL-8
title: Minimize Software to Minimize Vulnerability
description: <see below>
contents: []
---


## /description

The
simplest way to avoid vulnerabilities in software is to avoid installing
that software. On Red Hat Enterprise Linux 8,the RPM Package Manager
(originally Red Hat Package Manager, abbreviated RPM) allows for careful
management of the set of software packages installed on a system.
Installed software contributes to system vulnerability in several ways.
Packages that include setuid programs may provide local attackers a
potential path to privilege escalation. Packages that include network
services may give this opportunity to network-based attackers. Packages
that include programs which are predictably executed by local users
(e.g. after graphical login) may provide opportunities for trojan horses
or other attack code to be run undetected. The number of software
packages installed on a system can almost always be significantly pruned
to include only the software for which there is an environmental or
operational need.
