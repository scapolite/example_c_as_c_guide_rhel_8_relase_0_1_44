---
scapolite:
    class: rule
    version: '0.51'
id: ftp_limit_users
id_namespace: org.ssgproject.RHEL-8
title: Limit Users Allowed FTP Access if Necessary
rule: <see below>
rationale: <see below>
description: <see below>
applicability:
  - system: org.scapolite.xccdf.applicability
---


## /rule

Limit Users Allowed FTP Access if Necessary

## /rationale

Historically,
the file `/etc/ftpusers` contained a list of users who were not allowed
to access the system via FTP. It was used to prevent system users such
as the root user from logging in via the insecure FTP protocol. However,
when the configuration option `userlist deny=NO` is set, vsftpd
interprets ftpusers as the set of users who are allowed to login via
FTP. Since it should be possible for most users to access their accounts
via secure protocols, it is recommended that this setting be used, so
that non-anonymous FTP access can be limited to legacy users who have
been explicitly identified.

## /description

If
there is a mission-critical reason for users to access their accounts
via the insecure FTP protocol, limit the set of users who are allowed
this access. Edit the vsftpd configuration file. Add or correct the
following configuration options:

``` 
userlist_enable=YES
userlist_file=/etc/vsftp.ftpusers
userlist_deny=NO
```

Edit the file `/etc/vsftp.ftpusers`. For each user USERNAME who should
be allowed to access the system via FTP, add a line containing that
user\'s name:

``` 
USERNAME
```

If anonymous access is also required, add the anonymous usernames to
`/etc/vsftp.ftpusers` as well.

``` 
anonymous
ftp
```
