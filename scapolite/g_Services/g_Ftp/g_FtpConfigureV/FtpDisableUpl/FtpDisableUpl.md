---
scapolite:
    class: rule
    version: '0.51'
id: ftp_disable_uploads
id_namespace: org.ssgproject.RHEL-8
title: Disable FTP Uploads if Possible
rule: <see below>
rationale: <see below>
description: <see below>
applicability:
  - system: org.scapolite.xccdf.applicability
---


## /rule

Disable FTP Uploads if Possible

## /rationale

Anonymous
FTP can be a convenient way to make files available for universal
download. However, it is less common to have a need to allow
unauthenticated users to place files on the FTP server. If this must be
done, it is necessary to ensure that files cannot be uploaded and
downloaded from the same directory.

## /description

Is
there a mission-critical reason for users to upload files via FTP? If
not, edit the vsftpd configuration file to add or correct the following
configuration options:

``` 
write_enable=NO
```

If FTP uploads are necessary, follow the guidance in the remainder of
this section to secure these transactions as much as possible.
