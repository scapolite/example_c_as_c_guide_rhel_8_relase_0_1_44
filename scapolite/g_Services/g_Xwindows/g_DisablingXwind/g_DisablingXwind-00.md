---
scapolite:
    class: group
    version: '0.51'
id: disabling_xwindows
id_namespace: org.ssgproject.RHEL-8
title: Disable X Windows
description: <see below>
contents:
  - class: rule_ref
    idref: package_xorg-x11-server-common_removed
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Remove the X Windows Package Group
  - class: rule_ref
    idref: xwindows_runlevel_target
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Disable X Windows Startup By Setting Default Target
---


## /description

Unless
there is a mission-critical reason for the system to run a graphical
user interface, ensure X is not set to start automatically at boot and
remove the X Windows software packages. There is usually no reason to
run X Windows on a dedicated server system, as it increases the
system\'s attack surface and consumes system resources. Administrators
of server systems should instead login via SSH or on the text console.
