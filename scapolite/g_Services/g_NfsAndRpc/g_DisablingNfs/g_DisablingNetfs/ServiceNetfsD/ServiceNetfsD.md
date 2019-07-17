---
scapolite:
    class: rule
    version: '0.51'
id: service_netfs_disabled
id_namespace: org.ssgproject.RHEL-8
title: Disable Network File Systems (netfs)
rule: <see below>
description: <see below>
applicability:
  - system: org.scapolite.xccdf.applicability
---


## /rule

Disable Network File Systems (netfs)

## /description

The
netfs script manages the boot-time mounting of several types of
networked filesystems, of which NFS and Samba are the most common. If
these filesystem types are not in use, the script can be disabled,
protecting the system somewhat against accidental or malicious changes
to `/etc/fstab` and against flaws in the netfs script itself. The
`netfs` service can be disabled with the following command:

``` 
$ sudo systemctl disable netfs.service
```
