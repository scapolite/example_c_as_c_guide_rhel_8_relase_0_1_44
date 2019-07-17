---
scapolite:
    class: group
    version: '0.51'
id: disabling_netfs
id_namespace: org.ssgproject.RHEL-8
title: Disable netfs if Possible
description: <see below>
contents:
  - class: rule_ref
    idref: service_netfs_disabled
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Disable Network File Systems (netfs)
---


## /description

To
determine if any network filesystems handled by netfs are currently
mounted on the system execute the following command:

``` 
$ mount -t nfs,nfs4,smbfs,cifs,ncpfs
```

If the command did not return any output then disable netfs.
