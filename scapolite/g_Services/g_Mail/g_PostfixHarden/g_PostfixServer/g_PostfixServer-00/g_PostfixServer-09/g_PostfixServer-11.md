---
scapolite:
    class: group
    version: '0.51'
id: postfix_server_relay_set_trusted
id_namespace: org.ssgproject.RHEL-8
title: Configure Trusted Networks and Hosts
description: <see below>
contents: []
---


## /description

Edit
`/etc/postfix/main.cf`, and configure the contents of the `mynetworks`
variable in one of the following ways:

-   If any system in the subnet containing the MTA may be trusted to
    relay messages, add or correct the following line:

        mynetworks_style = subnet

    This is also the default setting, and is in effect if all
    `my_networks_style` directives are commented.

-   If only the MTA host itself is trusted to relay messages, add or
    correct the following line:

        mynetworks_style = host

-   If the set of systems which can relay is more complicated, manually
    specify an entry for each netblock or IP address which is trusted to
    relay by setting the `mynetworks` variable directly:

        mynetworks = 10.0.0.0/16, 192.168.1.0/24, 127.0.0.1
