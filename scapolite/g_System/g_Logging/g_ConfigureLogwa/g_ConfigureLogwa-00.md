---
scapolite:
    class: group
    version: '0.51'
id: configure_logwatch_on_logserver
id_namespace: org.ssgproject.RHEL-8
title: Configure Logwatch on the Central Log Server
description: <see below>
contents:
  - class: rule_ref
    idref: logwatch_configured_splithosts
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Configure Logwatch SplitHosts Line
  - class: rule_ref
    idref: logwatch_configured_hostlimit
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Configure Logwatch HostLimit Line
---


## /description

Is
this system the central log server? If so, edit the file
`/etc/logwatch/conf/logwatch.conf` as shown below.
