---
scapolite:
    class: group
    version: '0.51'
id: intro-root-shell-assumed
id_namespace: org.ssgproject.RHEL-8
title: Root Shell Environment Assumed
description: <see below>
contents: []
---


## /description

Most
of the actions listed in this document are written with the assumption
that they will be executed by the root user running the `/bin/bash`
shell. Commands preceded with a hash mark (\#) assume that the
administrator will execute the commands as root, i.e. apply the command
via `sudo` whenever possible, or use `su` to gain root privileges if
`sudo` cannot be used. Commands which can be executed as a non-root user
are are preceded by a dollar sign (\$) prompt.
