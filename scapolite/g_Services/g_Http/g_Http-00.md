---
scapolite:
    class: group
    version: '0.51'
id: http
id_namespace: org.ssgproject.RHEL-8
title: Web Server
description: <see below>
contents:
  - class: group_ref
    idref: disabling_httpd
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Disable Apache if Possible
  - class: group_ref
    idref: securing_httpd
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Secure Apache Configuration
  - class: group_ref
    idref: installing_httpd
    idref_namespace: org.ssgproject.RHEL-8
    ref_comment: Install Apache if Necessary
---


## /description

The
web server is responsible for providing access to content via the HTTP
protocol. Web servers represent a significant security risk because:  
  

-   The HTTP port is commonly probed by malicious sources
-   Web server software is very complex, and includes a long history of
    vulnerabilities
-   The HTTP protocol is unencrypted and vulnerable to passive
    monitoring

  
  
The system\'s default web server software is Apache 2 and is provided in
the RPM package `httpd`.
