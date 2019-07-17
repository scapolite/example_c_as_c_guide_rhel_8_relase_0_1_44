---
scapolite:
    class: group
    version: '0.51'
id: logging
id_namespace: org.ssgproject.RHEL-8
title: Configure Syslog
description: <see below>
contents:
  - class: group_ref
    idref: rsyslog_sending_messages
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Rsyslog Logs Sent To Remote Host
  - class: group_ref
    idref: rsyslog_accepting_remote_messages
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Configure rsyslogd to Accept Remote Messages If Acting as a ...
  - class: group_ref
    idref: ensure_rsyslog_log_file_configuration
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Ensure Proper Configuration of Log Files
  - class: group_ref
    idref: log_rotation
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Ensure All Logs are Rotated by logrotate
  - class: group_ref
    idref: configure_logwatch_on_logserver
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Configure Logwatch on the Central Log Server
  - class: rule_ref
    idref: package_rsyslog_installed
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Ensure rsyslog is Installed
  - class: rule_ref
    idref: service_rsyslog_enabled
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Enable rsyslog Service
  - class: rule_ref
    idref: disable_logwatch_for_logserver
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Disable Logwatch on Clients if a Logserver Exists
---


## /description

The
syslog service has been the default Unix logging mechanism for many
years. It has a number of downsides, including inconsistent log format,
lack of authentication for received messages, and lack of
authentication, encryption, or reliable transport for messages sent over
a network. However, due to its long history, syslog is a de facto
standard which is supported by almost all Unix applications.  
  
In Red Hat Enterprise Linux 8, rsyslog has replaced ksyslogd as the
syslog daemon of choice, and it includes some additional security
features such as reliable, connection-oriented (i.e. TCP) transmission
of logs, the option to log to database formats, and the encryption of
log data en route to a central logging server. This section discusses
how to configure rsyslog for best effect, and how to use tools provided
with the system to maintain and monitor logs.
