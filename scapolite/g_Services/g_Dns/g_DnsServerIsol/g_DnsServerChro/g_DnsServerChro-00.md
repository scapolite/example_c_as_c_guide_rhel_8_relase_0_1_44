---
scapolite:
    class: group
    version: '0.51'
id: dns_server_chroot
id_namespace: org.ssgproject.RHEL-8
title: Run DNS Software in a chroot Jail
description: <see below>
contents: []
---


## /description

Install
the `bind-chroot` package:

``` 
$ sudo yum install bind-chroot
```

Place a valid named.conf file inside the chroot jail:

``` 
$ sudo cp /etc/named.conf /var/named/chroot/etc/named.conf
$ sudo chown root:root /var/named/chroot/etc/named.conf
$ sudo chmod 644 /var/named/chroot/etc/named.conf
```

Create and populate an appropriate zone directory within the jail, based
on the options directive. If your `named.conf` includes:

``` 
options {
directory "/path/to/DIRNAME ";
...
}
```

then copy that directory and its contents from the original zone
directory:

``` 
$ sudo cp -r /path/to/DIRNAME /var/named/chroot/DIRNAME
```

Add or correct the following line within `/etc/sysconfig/named`:

``` 
ROOTDIR=/var/named/chroot
```
