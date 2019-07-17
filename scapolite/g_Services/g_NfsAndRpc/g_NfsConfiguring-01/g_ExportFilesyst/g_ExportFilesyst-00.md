---
scapolite:
    class: group
    version: '0.51'
id: export_filesystems_read_only
id_namespace: org.ssgproject.RHEL-8
title: Export Filesystems Read-Only if Possible
description: <see below>
contents: []
---


## /description

If
a filesystem is being exported so that users can view the files in a
convenient fashion, but there is no need for users to edit those files,
exporting the filesystem read-only removes an attack vector against the
server. The default filesystem export mode is `ro`, so do not specify
`rw` without a good reason.
