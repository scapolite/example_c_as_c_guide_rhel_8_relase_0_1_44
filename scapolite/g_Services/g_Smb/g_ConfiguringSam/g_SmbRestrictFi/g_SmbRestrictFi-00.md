---
scapolite:
    class: group
    version: '0.51'
id: smb_restrict_file_sharing
id_namespace: org.ssgproject.RHEL-8
title: Restrict SMB File Sharing to Configured Networks
description: <see below>
contents: []
---


## /description

Only
users with local user accounts will be able to log in to Samba shares by
default. Shares can be limited to particular users or network addresses.
Use the `hosts allow` and `hosts deny` directives accordingly, and
consider setting the valid users directive to a limited subset of users
or to a group of users. Separate each address, user, or user group with
a space as follows for a particular *share* or global:

``` 
[share]
  hosts allow = 192.168.1. 127.0.0.1
  valid users = userone usertwo @usergroup
```

It is also possible to limit read and write access to particular users
with the read list and write list options, though the permissions set by
the system itself will override these settings. Set the read only
attribute for each share to ensure that global settings will not
accidentally override the individual share settings. Then, as with the
valid users directive, separate each user or group of users with a
space:

``` 
[share]
  read only = yes
  write list = userone usertwo @usergroup
```
