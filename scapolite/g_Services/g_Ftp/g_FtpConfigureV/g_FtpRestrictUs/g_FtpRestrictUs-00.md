---
scapolite:
    class: group
    version: '0.51'
id: ftp_restrict_users
id_namespace: org.ssgproject.RHEL-8
title: Restrict the Set of Users Allowed to Access FTP
description: <see below>
contents:
  - class: rule_ref
    idref: ftp_restrict_to_anon
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Restrict Access to Anonymous Users if Possible
  - class: rule_ref
    idref: ftp_limit_users
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Limit Users Allowed FTP Access if Necessary
---


## /description

This
section describes how to disable non-anonymous (password-based) FTP
logins, or, if it is not possible to do this entirely due to legacy
applications, how to restrict insecure FTP login to only those users who
have an identified need for this access.
