---
scapolite:
    class: group
    version: '0.51'
id: rsyslog_sending_messages
id_namespace: org.ssgproject.RHEL-8
title: Rsyslog Logs Sent To Remote Host
description: <see below>
values:
  - id: rsyslog_remote_loghost_address
    id_namespace: org.ssgproject.RHEL-8
    title: Remote Log Server
    description: |
        Specify
        an URI or IP address of a remote host where the log messages will be
        sent and stored.
    type: string
    interactive: true
    definitions:
      - value: logcollector
contents:
  - class: rule_ref
    idref: rsyslog_remote_loghost
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Ensure Logs Sent To Remote Host
---


## /description

If
system logs are to be useful in detecting malicious activities, it is
necessary to send logs to a remote server. An intruder who has
compromised the root account on a system may delete the log entries
which indicate that the system was attacked before they are seen by an
administrator.  
  
However, it is recommended that logs be stored on the local host in
addition to being sent to the loghost, especially if `rsyslog` has been
configured to use the UDP protocol to send messages over a network. UDP
does not guarantee reliable delivery, and moderately busy sites will
lose log messages occasionally, especially in periods of high traffic
which may be the result of an attack. In addition, remote `rsyslog`
messages are not authenticated in any way by default, so it is easy for
an attacker to introduce spurious messages to the central log server.
Also, some problems cause loss of network connectivity, which will
prevent the sending of messages to the central server. For all of these
reasons, it is better to store log messages both centrally and on each
host, so that they can be correlated if necessary.
