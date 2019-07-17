---
scapolite:
    class: group
    version: '0.51'
id: rsyslog_accepting_remote_messages
id_namespace: org.ssgproject.RHEL-8
title: Configure rsyslogd to Accept Remote Messages If Acting as a Log Server
description: <see below>
contents:
  - class: rule_ref
    idref: rsyslog_nolisten
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Ensure rsyslog Does Not Accept Remote Messages Unless Actin ...
  - class: rule_ref
    idref: package_syslogng_installed
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Ensure syslog-ng is Installed
  - class: rule_ref
    idref: service_syslogng_enabled
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Enable syslog-ng Service
  - class: rule_ref
    idref: rsyslog_accept_remote_messages_tcp
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Enable rsyslog to Accept Messages via TCP, if Acting As Log ...
  - class: rule_ref
    idref: rsyslog_accept_remote_messages_udp
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Enable rsyslog to Accept Messages via UDP, if Acting As Log ...
---


## /description

By
default, `rsyslog` does not listen over the network for log messages. If
needed, modules can be enabled to allow the rsyslog daemon to receive
messages from other systems and for the system thus to act as a log
server. If the system is not a log server, then lines concerning these
modules should remain commented out.
