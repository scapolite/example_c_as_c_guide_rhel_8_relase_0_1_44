---
scapolite:
    class: group
    version: '0.51'
id: principle-least-privilege
id_namespace: org.ssgproject.RHEL-8
title: Least Privilege
description: <see below>
contents: []
---


## /description

Grant
the least privilege necessary for user accounts and software to perform
tasks. For example, `sudo` can be implemented to limit authorization to
super user accounts on the system only to designated personnel. Another
example is to limit logins on server systems to only those
administrators who need to log into them in order to perform
administration tasks. Using SELinux also follows the principle of least
privilege: SELinux policy can confine software to perform only actions
on the system that are specifically allowed. This can be far more
restrictive than the actions permissible by the traditional Unix
permissions model.
