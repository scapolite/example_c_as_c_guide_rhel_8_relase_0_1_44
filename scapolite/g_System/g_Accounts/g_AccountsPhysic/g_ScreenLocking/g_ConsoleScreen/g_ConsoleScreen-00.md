---
scapolite:
    class: group
    version: '0.51'
id: console_screen_locking
id_namespace: org.ssgproject.RHEL-8
title: Configure Console Screen Locking
description: <see below>
contents:
  - class: rule_ref
    idref: package_screen_installed
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Install the screen Package
  - class: rule_ref
    idref: configure_tmux_lock_command
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Configure the tmux Lock Command
  - class: rule_ref
    idref: package_tmux_installed
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Install the tmux Package
---


## /description

A
console screen locking mechanism is a temporary action taken when a user
stops work and moves away from the immediate physical vicinity of the
information system but does not logout because of the temporary nature
of the absence. Rather than relying on the user to manually lock their
operation system session prior to vacating the vicinity, operating
systems need to be able to identify when a user\'s session has idled and
take action to initiate the session lock.
