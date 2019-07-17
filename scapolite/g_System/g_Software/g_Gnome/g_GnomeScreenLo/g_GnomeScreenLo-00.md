---
scapolite:
    class: group
    version: '0.51'
id: gnome_screen_locking
id_namespace: org.ssgproject.RHEL-8
title: Configure GNOME Screen Locking
description: <see below>
values:
  - id: var_screensaver_lock_delay
    id_namespace: org.ssgproject.RHEL-8
    title: Screensaver Lock Delay
    description: |
        Choose
        allowed duration (in seconds) after a screensaver becomes active before
        displaying an authentication prompt
    type: number
    default: immediate
    definitions:
      - selector: 10_seconds
        value: 10
      - selector: 5_seconds
        value: 5
      - selector: immediate
        value: 0
  - id: inactivity_timeout_value
    id_namespace: org.ssgproject.RHEL-8
    title: Screensaver Inactivity timeout
    description: |
        Choose
        allowed duration (in seconds) of inactive graphical sessions
    type: number
    default: 15_minutes
    definitions:
      - selector: 10_minutes
        value: 600
      - selector: 15_minutes
        value: 900
      - selector: 30_minutes
        value: 1800
      - selector: 5_minutes
        value: 300
contents:
  - class: rule_ref
    idref: gconf_gnome_screensaver_idle_delay
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Set GNOME Login Inactivity Timeout
  - class: rule_ref
    idref: dconf_gnome_screensaver_mode_blank
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Implement Blank Screensaver
  - class: rule_ref
    idref: gconf_gnome_screen_locking_keybindings
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Set GNOME Screen Locking Keybindings
  - class: rule_ref
    idref: dconf_gnome_screensaver_idle_activation_locked
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Ensure Users Cannot Change GNOME3 Screensaver Idle Activati ...
  - class: rule_ref
    idref: gconf_gnome_screensaver_idle_activation_enabled
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: GNOME Desktop Screensaver Mandatory Use
  - class: rule_ref
    idref: gconf_gnome_screensaver_max_idle_action
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Set GNOME Login Maximum Allowed Inactivity Action
  - class: rule_ref
    idref: dconf_gnome_screensaver_idle_delay
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Set GNOME3 Screensaver Inactivity Timeout
  - class: rule_ref
    idref: dconf_gnome_screensaver_user_locks
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Ensure Users Cannot Change GNOME3 Screensaver Settings
  - class: rule_ref
    idref: gconf_gnome_screensaver_max_idle_time
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Set GNOME Login Maximum Allowed Inactivity
  - class: rule_ref
    idref: dconf_gnome_screensaver_lock_locked
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Ensure Users Cannot Change GNOME3 Screensaver Lock After Id ...
  - class: rule_ref
    idref: gconf_gnome_screensaver_mode_blank
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Implement Blank Screensaver
  - class: rule_ref
    idref: dconf_gnome_screensaver_lock_enabled
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Enable GNOME3 Screensaver Lock After Idle Period
  - class: rule_ref
    idref: dconf_gnome_screensaver_idle_activation_enabled
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Enable GNOME3 Screensaver Idle Activation
  - class: rule_ref
    idref: dconf_gnome_screensaver_user_info
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Disable Full User Name on Splash Shield
  - class: rule_ref
    idref: dconf_gnome_screensaver_lock_delay
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Set GNOME3 Screensaver Lock Delay After Activation Period
  - class: rule_ref
    idref: gconf_gnome_screensaver_lock_enabled
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Enable Screen Lock Activation After Idle Period
  - class: rule_ref
    idref: dconf_gnome_session_idle_user_locks
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Ensure Users Cannot Change GNOME3 Session Idle Settings
---


## /description

In the default GNOME3 desktop, the screen can be locked by selecting the
user name in the far right corner of the main panel and selecting
**Lock**.  
  
The following sections detail commands to enforce idle activation of the
screensaver, screen locking, a blank-screen screensaver, and an idle
activation time.  
  
Because users should be trained to lock the screen when they step away
from the computer, the automatic locking feature is only meant as a
backup.  
  
The root account can be screen-locked; however, the root account should
*never* be used to log into an X Windows environment and should only be
used to for direct login via console in emergency circumstances.  
  
For more information about enforcing preferences in the GNOME3
environment using the DConf configuration system, see
**<http://wiki.gnome.org/dconf>** and the man page `dconf(1)`.
