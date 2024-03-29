---
scapolite:
    class: group
    version: '0.51'
id: sap_host
id_namespace: org.ssgproject.RHEL-8
title: SAP Specific Requirement
description: <see below>
values:
  - id: var_accounts_authorized_local_users_regex
    id_namespace: org.ssgproject.RHEL-8
    title: Accounts Authorized Local Users on the Operating System
    description: |
        List
        the user accounts that are authorized locally on the operating system.
        This list includes both users requried by the operating system and by
        the installed applications. Depending on the Operating System
        distribution, version, software groups and applications, the user list
        is different and can be customized with scap-workbench. OVAL regular
        expression is used for the user list. The list starts with \'\^\' and
        ends with \'\$\' so that it matches exactly the username, not any string
        that includes the username. Users are separated with \'\|\'. For
        example, three users: bin, oracle and sapadm are allowd, then the list
        is `^(bin|oracle|sapadm)$`. The user `root` is the only user that is
        hard coded in OVAL that is always allowed on the operating system.
    type: string
    default: ol7forsap
    interactive: true
    operator: pattern match
    definitions:
      - selector: ol7forsap
        value: ^(root|bin|daemon|adm|lp|sync|shutdown|halt|mail|operator|games|ftp|nobody|pegasus|systemd-bus-proxy|systemd-network|dbus|polkitd|abrt|unbound|tss|libstoragemgmt|rpc|colord|usbmuxd$|pcp|saslauth|geoclue|setroubleshoot|rtkit|chrony|qemu|radvd|rpcuser|nfsnobody|pulse|gdm|gnome-initial-setup|postfix|avahi|ntp|sshd|tcpdump|oprofile|uuidd)$
      - selector: saponol7
        value: ^(root|bin|daemon|adm|lp|sync|shutdown|halt|mail|operator|games|ftp|nobody|pegasus|systemd-bus-proxy|systemd-network|dbus|polkitd|abrt|unbound|tss|libstoragemgmt|rpc|colord|usbmuxd$|pcp|saslauth|geoclue|setroubleshoot|rtkit|chrony|qemu|radvd|rpcuser|nfsnobody|pulse|gdm|gnome-initial-setup|postfix|avahi|ntp|sshd|tcpdump|oprofile|uuidd|[a-z][a-z0-9][a-z0-9]adm|ora[a-z][a-z0-9][a-z0-9]|sapadm|oracle)$
contents: []
---


## /description

SAP
(Systems, Applications and Products in Data Processing) is enterprise
software to manage business operations and customer relations. The
following section contains SAP specific requirement that is not part of
standard or common OS setting.
