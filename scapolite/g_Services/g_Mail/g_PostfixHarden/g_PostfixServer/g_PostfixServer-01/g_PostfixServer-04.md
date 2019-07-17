---
scapolite:
    class: group
    version: '0.51'
id: postfix_server_dos
id_namespace: org.ssgproject.RHEL-8
title: Configure Postfix Resource Usage to Limit Denial of Service Attacks
description: <see below>
contents: []
---


## /description

Edit
`/etc/postfix/main.cf`. Edit the following lines to configure the amount
of system resources Postfix can consume:

``` 
default_process_limit = 100
smtpd_client_connection_count_limit = 10
smtpd_client_connection_rate_limit = 30
queue_minfree = 20971520
header_size_limit = 51200
message_size_limit = 10485760
smtpd_recipient_limit = 100
```

The values here are examples.
