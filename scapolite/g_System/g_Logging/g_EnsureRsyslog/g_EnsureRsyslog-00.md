---
scapolite:
    class: group
    version: '0.51'
id: ensure_rsyslog_log_file_configuration
id_namespace: org.ssgproject.RHEL-8
title: Ensure Proper Configuration of Log Files
description: <see below>
values:
  - id: file_owner_logfiles_value
    id_namespace: org.ssgproject.RHEL-8
    title: User who owns log files
    description: |
        Specify
        user owner of all logfiles specified in `/etc/rsyslog.conf`.
    type: string
    default: root
    definitions:
      - selector: adm
        value: adm
      - selector: root
        value: root
  - id: file_groupowner_logfiles_value
    id_namespace: org.ssgproject.RHEL-8
    title: group who owns log files
    description: |
        Specify
        group owner of all logfiles specified in `/etc/rsyslog.conf.`
    type: string
    default: root
    definitions:
      - selector: adm
        value: adm
      - selector: root
        value: root
contents:
  - class: rule_ref
    idref: rsyslog_files_groupownership
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Ensure Log Files Are Owned By Appropriate Group
  - class: rule_ref
    idref: rsyslog_files_ownership
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Ensure Log Files Are Owned By Appropriate User
  - class: rule_ref
    idref: rsyslog_files_permissions
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Ensure System Log Files Have Correct Permissions
  - class: rule_ref
    idref: rsyslog_cron_logging
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Ensure cron Is Logging To Rsyslog
---


## /description

The
file `/etc/rsyslog.conf` controls where log message are written. These
are controlled by lines called *rules*, which consist of a *selector*
and an *action*. These rules are often customized depending on the role
of the system, the requirements of the environment, and whatever may
enable the administrator to most effectively make use of log data. The
default rules in Red Hat Enterprise Linux 8 are:

``` 
*.info;mail.none;authpriv.none;cron.none                /var/log/messages
authpriv.*                                              /var/log/secure
mail.*                                                  -/var/log/maillog
cron.*                                                  /var/log/cron
*.emerg                                                 *
uucp,news.crit                                          /var/log/spooler
local7.*                                                /var/log/boot.log
```

See the man page `rsyslog.conf(5)` for more information. *Note that the
`rsyslog` daemon can be configured to use a timestamp format that some
log processing programs may not understand. If this occurs, edit the
file `/etc/rsyslog.conf` and add or edit the following line:*

``` 
$ ActionFileDefaultTemplate RSYSLOG_TraditionalFileFormat
```
