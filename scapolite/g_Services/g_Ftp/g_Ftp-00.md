---
scapolite:
    class: group
    version: '0.51'
id: ftp
id_namespace: org.ssgproject.RHEL-8
title: FTP Server
description: <see below>
contents:
  - class: group_ref
    idref: ftp_configure_vsftpd
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Configure vsftpd to Provide FTP Service if Necessary
  - class: group_ref
    idref: ftp_use_vsftpd
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Use vsftpd to Provide FTP Service if Necessary
  - class: group_ref
    idref: disabling_vsftpd
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Disable vsftpd if Possible
---


## /description

FTP
is a common method for allowing remote access to files. Like telnet, the
FTP protocol is unencrypted, which means that passwords and other data
transmitted during the session can be captured and that the session is
vulnerable to hijacking. Therefore, running the FTP server software is
not recommended.  
  
However, there are some FTP server configurations which may be
appropriate for some environments, particularly those which allow only
read-only anonymous access as a means of downloading data available to
the public.
