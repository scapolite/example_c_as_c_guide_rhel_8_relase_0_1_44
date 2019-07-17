---
scapolite:
    class: group
    version: '0.51'
id: configure_exports_restrictively
id_namespace: org.ssgproject.RHEL-8
title: Configure the Exports File Restrictively
description: <see below>
contents: []
---


## /description

Linux\'s
NFS implementation uses the file `/etc/exports` to control what
filesystems and directories may be accessed via NFS. (See the
`exports(5)` manpage for more information about the format of this
file.)  
  
The syntax of the `exports` file is not necessarily checked fully on
reload, and syntax errors can leave your NFS configuration more open
than intended. Therefore, exercise caution when modifying the file.  
  
The syntax of each line in `/etc/exports` is:

``` 
/DIR    host1(opt1,opt2) host2(opt3)
```

where `/DIR` is a directory or filesystem to export, `hostN` is an IP
address, netblock, hostname, domain, or netgroup to which to export, and
`optN` is an option.
