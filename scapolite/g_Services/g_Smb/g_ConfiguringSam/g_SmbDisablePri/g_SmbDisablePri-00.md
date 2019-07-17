---
scapolite:
    class: group
    version: '0.51'
id: smb_disable_printing
id_namespace: org.ssgproject.RHEL-8
title: Restrict Printer Sharing
description: <see below>
contents: []
---


## /description

By
default, Samba utilizes the CUPS printing service to enable printer
sharing with Microsoft Windows workstations. If there are no printers on
the local system, or if printer sharing with Microsoft Windows is not
required, disable the printer sharing capability by commenting out the
following lines, found in `/etc/samba/smb.conf`:

``` 
[global]
  load printers = yes
  cups options = raw
[printers]
  comment = All Printers
  path = /usr/spool/samba
  browseable = no
  guest ok = no
  writable = no
  printable = yes
```

There may be other options present, but these are the only options
enabled and uncommented by default. Removing the `[printers]` share
should be enough for most users. If the Samba printer sharing capability
is needed, consider disabling the Samba network browsing capability or
restricting access to a particular set of users or network addresses.
Set the `valid users` parameter to a small subset of users or restrict
it to a particular group of users with the shorthand `@`. Separate each
user or group of users with a space. For example, under the `[printers]`
share:

``` 
[printers]
  valid users = user @printerusers
```
