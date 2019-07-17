---
scapolite:
    class: group
    version: '0.51'
id: log_rotation
id_namespace: org.ssgproject.RHEL-8
title: Ensure All Logs are Rotated by logrotate
description: <see below>
contents:
  - class: rule_ref
    idref: ensure_logrotate_activated
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Ensure Logrotate Runs Periodically
---


## /description

Edit the file `/etc/logrotate.d/syslog`. Find the first line, which
should look like this (wrapped for clarity):

``` 
/var/log/messages /var/log/secure /var/log/maillog /var/log/spooler \
  /var/log/boot.log /var/log/cron {
```

Edit this line so that it contains a one-space-separated listing of each
log file referenced in `/etc/rsyslog.conf`.  
  
All logs in use on a system must be rotated regularly, or the log files
will consume disk space over time, eventually interfering with system
operation. The file `/etc/logrotate.d/syslog` is the configuration file
used by the `logrotate` program to maintain all log files written by
`syslog`. By default, it rotates logs weekly and stores four archival
copies of each log. These settings can be modified by editing
`/etc/logrotate.conf`, but the defaults are sufficient for purposes of
this guide.  
  
Note that `logrotate` is run nightly by the cron job
`/etc/cron.daily/logrotate`. If particularly active logs need to be
rotated more often than once a day, some other mechanism must be used.
